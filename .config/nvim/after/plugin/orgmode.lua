-- Load custom tree-sitter grammar for org filetype
require('orgmode').setup_ts_grammar()

require('orgmode').setup({
    org_agenda_files = {'~/Documents/org/*'},
    org_default_notes_file = '~/Documents/org/refile.org',
    org_capture_templates = {
        w = {
            description = "Day Work Log",
            template = "*** %t 8h Homeoffice\n  - %?",
            target = "~/Documents/org/work/worklog.org",
        },
        j = {
            description = "Journal",
            template = "** %t\n - %?",
            target = "~/Documents/org/journal.org",
        }
    }
})
