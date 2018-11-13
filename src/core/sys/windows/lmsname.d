/**
 * Windows API header module
 *
 * Translated from MinGW Windows headers
 *
 * License: $(LINK2 http://www.boost.org/LICENSE_1_0.txt, Boost License 1.0)
 * Source: $(DRUNTIMESRC src/core/sys/windows/_lmsname.d)
 */
module core.sys.windows.lmsname;
version (Windows):

private import core.sys.windows.windef;
private import core.sys.windows.winnt : TEXT;

const TCHAR[]
    SERVICE_WORKSTATION      = TEXT!"LanmanWorkstation",
    SERVICE_LM20_WORKSTATION = TEXT!"WORKSTATION",
    WORKSTATION_DISPLAY_NAME = TEXT!"Workstation",
    SERVICE_SERVER           = TEXT!"LanmanServer",
    SERVICE_LM20_SERVER      = TEXT!"SERVER",
    SERVER_DISPLAY_NAME      = TEXT!"Server",
    SERVICE_BROWSER          = TEXT!"BROWSER",
    SERVICE_LM20_BROWSER     = SERVICE_BROWSER,
    SERVICE_MESSENGER        = TEXT!"MESSENGER",
    SERVICE_LM20_MESSENGER   = SERVICE_MESSENGER,
    SERVICE_NETRUN           = TEXT!"NETRUN",
    SERVICE_LM20_NETRUN      = SERVICE_NETRUN,
    SERVICE_SPOOLER          = TEXT!"SPOOLER",
    SERVICE_LM20_SPOOLER     = SERVICE_SPOOLER,
    SERVICE_ALERTER          = TEXT!"ALERTER",
    SERVICE_LM20_ALERTER     = SERVICE_ALERTER,
    SERVICE_NETLOGON         = TEXT!"NETLOGON",
    SERVICE_LM20_NETLOGON    = SERVICE_NETLOGON,
    SERVICE_NETPOPUP         = TEXT!"NETPOPUP",
    SERVICE_LM20_NETPOPUP    = SERVICE_NETPOPUP,
    SERVICE_SQLSERVER        = TEXT!"SQLSERVER",
    SERVICE_LM20_SQLSERVER   = SERVICE_SQLSERVER,
    SERVICE_REPL             = TEXT!"REPLICATOR",
    SERVICE_LM20_REPL        = SERVICE_REPL,
    SERVICE_RIPL             = TEXT!"REMOTEBOOT",
    SERVICE_LM20_RIPL        = SERVICE_RIPL,
    SERVICE_TIMESOURCE       = TEXT!"TIMESOURCE",
    SERVICE_LM20_TIMESOURCE  = SERVICE_TIMESOURCE,
    SERVICE_AFP              = TEXT!"AFP",
    SERVICE_LM20_AFP         = SERVICE_AFP,
    SERVICE_UPS              = TEXT!"UPS",
    SERVICE_LM20_UPS         = SERVICE_UPS,
    SERVICE_XACTSRV          = TEXT!"XACTSRV",
    SERVICE_LM20_XACTSRV     = SERVICE_XACTSRV,
    SERVICE_TCPIP            = TEXT!"TCPIP",
    SERVICE_LM20_TCPIP       = SERVICE_TCPIP,
    SERVICE_NBT              = TEXT!"NBT",
    SERVICE_LM20_NBT         = SERVICE_NBT,
    SERVICE_LMHOSTS          = TEXT!"LMHOSTS",
    SERVICE_LM20_LMHOSTS     = SERVICE_LMHOSTS,
    SERVICE_TELNET           = TEXT!"Telnet",
    SERVICE_LM20_TELNET      = SERVICE_TELNET,
    SERVICE_SCHEDULE         = TEXT!"Schedule",
    SERVICE_LM20_SCHEDULE    = SERVICE_SCHEDULE,
    SERVICE_NTLMSSP          = TEXT!"NtLmSsp",
    SERVICE_DHCP             = TEXT!"DHCP",
    SERVICE_LM20_DHCP        = SERVICE_DHCP,
    SERVICE_NWSAP            = TEXT!"NwSapAgent",
    SERVICE_LM20_NWSAP       = SERVICE_NWSAP,
    NWSAP_DISPLAY_NAME       = TEXT!"NW Sap Agent",
    SERVICE_NWCS             = TEXT!"NWCWorkstation";
