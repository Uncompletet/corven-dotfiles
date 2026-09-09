import QtQuick
import qs.services
import qs.modules.common
import qs.modules.common.functions
import qs.modules.common.widgets
import Quickshell
import Quickshell.Io

// Toggles the active connection's DNS between your Pi-hole and Cloudflare
// (1.1.1.1) via pihole-dns-toggle.fish / pihole-dns-status.fish.
// Defaults to "on" (Pi-hole) on load; fetchActiveState reconciles that
// with the real persisted state as soon as it reports back.
QuickToggleModel {
    id: root
    name: Translation.tr("Pi-hole DNS")

    toggled: true
    icon: "dns"

    mainAction: () => {
        const target = toggled ? "off" : "on"
        root.toggled = !toggled
        toggleProc.command = ["fish", "/home/YOURUSER/.local/bin/pihole-dns-toggle.fish", target]
        toggleProc.running = true
    }

    Process {
        id: toggleProc
        command: [] // set right before running, see mainAction
        onExited: (exitCode, exitStatus) => {
            if (exitCode !== 0) {
                root.toggled = !root.toggled // revert the optimistic flip, it didn't take
                Quickshell.execDetached(["notify-send",
                    Translation.tr("Pi-hole DNS"),
                    Translation.tr("Failed to switch DNS. Check your connection or run <tt>pihole-dns-toggle.fish</tt> manually."),
                    "-a", "Shell"
                ])
            }
            // re-sync from the actual state file either way
            fetchActiveState.running = true
        }
    }

    Process {
        id: fetchActiveState
        running: true
        command: ["fish", "/home/YOURUSER/.local/bin/pihole-dns-status.fish"]
        stdout: StdioCollector {
            id: statusCollector
            onStreamFinished: {
                if (statusCollector.text.length > 0) {
                    root.available = true
                    try {
                        const data = JSON.parse(statusCollector.text)
                        root.toggled = data.active
                    } catch (e) {
                        console.log("pihole-dns-status parse error:", e)
                    }
                }
            }
        }
    }

    tooltipText: Translation.tr("Pi-hole DNS (fallback: Cloudflare)")
}
