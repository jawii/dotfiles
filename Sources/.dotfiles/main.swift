import Files
import ShellOut
import Foundation

let home = Folder.home

print("Hallooo!! 🤪\n")

//
// Install vundle
//
do {
	print("Cloning Vundle!")
	try shellOut(to: "git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim")
} catch {
	// Vundle already installed
}
print("Vundle ok!")


//
// Dotfiles
//
print("Going through dotfiles... \n")
try Folder.current
	.subfolder(named: "Resources")
	.files.includingHidden
	.forEach { file in

		let fileName = file.name
		switch fileName {
		case ".bash_profile", ".vimrc", ".zshrc":
			if let oldFile = try? home.file(named: fileName) {
				print("Removing old file: \(fileName)")
				try oldFile.delete()
			}
			print("Copying new file: \(fileName)")
			try file.copy(to: home)

		case "oh-my-zsh.sh":
			let destFolder = try home.subfolder(at: ".oh-my-zsh")
			if let oldFile = try? destFolder.file(named: fileName) {
				print("Removing old file: \(fileName)")
				try oldFile.delete()
			}
			print("Copying new file: \(fileName)")
			try file.copy(to: destFolder)
		default:
			break
		}
		print(String.init(repeating: "-", count: 10))
}

print("Finish! 🖤", "")

//
//	Vundle Plugins now
//

// This hangs!
// try shellOut(to: "vim -c 'PluginInstall' -c 'qa!'")
// Copy to clipboard then
try shellOut(to: "echo vim +PluginInstall +qall | pbcopy")
print("Paste your clipboard to install Vundle plugins..", "")



