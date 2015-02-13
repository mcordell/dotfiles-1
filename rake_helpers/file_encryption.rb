class FileEncryption
  def self.check
    Output.with_linebreak 'Checking for file-system encryption with FileVault'
    result = `sudo fdesetup status`
    raise 'Please turn on file-system encryption' if result.match %r(is Off.)
    Output.with_linebreak 'FileVault is on'
  end
end
