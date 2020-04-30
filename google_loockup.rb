require "google_drive"

TABLE_KEY = '1BLBd3hZEyyNXo3KocHEAuo5klbZAd0b8NLB6-pve1Uo'.freeze
SESSION = GoogleDrive::Session.from_service_account_key(
    "key.json")

@ws = SESSION.spreadsheet_by_key(TABLE_KEY).worksheets[0]


def loockup(key)
 row = @ws.rows.find { |r| r[0] == key }
 p row ? row[1] : 'Nothing found'
end

 loockup(ARGV[0])