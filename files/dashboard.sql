INSERT INTO "dashboard_dashboard" VALUES('default','
{
    "defaultGraphParams": {
        "from": "-4hours",
        "height": "300",
        "until": "now",
        "width": "400"
    },
    "graphSize": {
        "height": "300",
        "width": "400"
    },
    "graphs": [
        [
            "",
            {
                "target": [
                    "substr(avg(*.cpu.*.cpu.system), 4)",
                    "substr(avg(*.cpu.*.cpu.idle), 4)",
                    "substr(avg(*.cpu.*.cpu.user), 4)"
                ],
                "title": "Average CPU usage"
            }
        ],
        [
            "",
            {
                "target": [
                    "highestCurrent(aliasSub(*.load.load.longterm,\"(.*).load.load.(.*)\", \"\\1 \\2\"), 5)",
                    "highestCurrent(aliasSub(*.load.load.shortterm,\"(.*).load.load.(.*)\", \"\\1 \\2\"), 5)",
                    "highestCurrent(aliasSub(*.load.load.midterm,\"(.*).load.load.(.*)\", \"\\1 \\2\"), 5)"
                ],
                "title": "Highest Load"
            }
        ],
        [
            "",
            {
                "from": "-4hours",
                "target": [
                    "aliasSub(lowestCurrent(*.df.*.df_complex.free,5), \"(.*).df.(.*).df_complex.free\", \"\\1 \\2\")"
                ],
                "title": "Lowest disk space",
                "until": "now"
            }
        ],
        [
            "",
            {
                "from": "-4hours",
                "target": [
                    "alias(secondYAxis(avg(stats.timers.*.proxy-server.object.PUT.201.timing.median)), ''PUT timing'')",
                    "alias(secondYAxis(avg(stats.timers.*.proxy-server.object.GET.200.timing.median)), ''GET timing'')",
                    "alias(sum(stats.counters.*.proxy-server.object.PUT.201.xfer.count), ''PUT'')",
                    "alias(sum(stats.counters.*.proxy-server.object.GET.200.xfer.count), ''GET'')"
                ],
                "title": "Proxy traffic/timing",
                "until": "now"
            }
        ],
        [
            "",
            {
                "target": [
                    "aliasSub(*.interface.eth*.if_octets.*,\"(.*).interface.(.*).if_octets.(.*)\", \"\\1 \\2 \\3\")"
                ],
                "title": "Interface usage"
            }
        ],
        [
            "",
            {
                "target": [
                    "aliasSub(*.disk.*.disk_time.*, \"(.*).disk.(.*).disk_time.(.*)\", \"\\1 \\2 \\3\")"
                ],
                "title": "Disk time"
            }
        ],
        [
            "",
            {
                "target": [
                    "aliasSub(*.disk.*.disk_ops.*, \"(.*).disk.(.*).disk_ops.(.*)\", \"\\1 \\2 \\3\")"
                ],
                "title": "Disk IOPS"
            }
        ],
        [
            "",
            {
                "hideLegend": "false",
                "target": [
                    "aliasSub(stats.timers.*.*.*.object-server.PUT.timing.median,\"stats.timers.*\\.(.*).object-server.PUT.*\", \"PUT \\1\")",
                    "aliasSub(stats.timers.*.*.*.object-server.GET.timing.median,\"stats.timers.*\\.(.*).object-server.GET.*\", \"GET \\1\")"
                ],
                "title": "Objectserver timing"
            }
        ],
        [
            "",
            {
                "hideLegend": "false",
                "target": [
                    "aliasSub(*.filecount.*quarantined_objects.files, \"(.*).filecount..*_(.*)_quarantined_objects.files\", \"\\1 \\2\")"
                ],
                "title": "Quarantined Objects"
            }
        ],
        [
            "",
            {
                "hideLegend": "false",
                "target": [
                    "aliasSub(*.filecount.*quarantined_containers.files, \"(.*).filecount..*_(.*)_quarantined.*.files\", \"\\1 \\2\")"
                ],
                "title": "Quarantined Containers"
            }
        ],
        [
            "",
            {
                "hideLegend": "false",
                "target": [
                    "aliasSub(*.filecount.*quarantined_accounts.files, \"(.*).filecount..*_(.*)_quarantined.*.files\", \"\\1 \\2\")"
                ],
                "title": "Quarantined Accounts"
            }
        ],
        [
            "",
            {
                "from": "-4hours",
                "target": [
                    "aliasSub(stats.timers.*.*.*.object-auditor.timing.median, \"stats.timers.*.*\\.(.*).object-auditor.timing.median\", \"\\1\")"
                ],
                "title": "Object Auditor",
                "until": "now"
            }
        ],
        [
            "",
            {
                "from": "-4hours",
                "target": [
                    "aliasSub(stats.timers.*.*.*.object-replicator.partition.update.timing.median, \"stats.timers.*.*\\.(.*).object-replicator.partition.update.timing.median\", \"\\1\")"
                ],
                "title": "Object Replicator",
                "until": "now"
            }
        ]
    ],
    "name": "default",
    "refreshConfig": {
        "enabled": false,
        "interval": 60000
    },
    "timeConfig": {
        "endDate": "2015-04-23T00:00:00",
        "endTime": "12:00 AM",
        "relativeStartQuantity": "4",
        "relativeStartUnits": "hours",
        "relativeUntilQuantity": "",
        "relativeUntilUnits": "now",
        "startDate": "2015-04-22T00:00:00",
        "startTime": "12:00 AM",
        "type": "relative"
    }
}
');
