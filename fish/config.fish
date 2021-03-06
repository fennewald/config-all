
function ls
	exa $argv
end

function e
	kak -clear
	if contains $argv[1] (kak -l)
		kak -c $argv
	else
		kak -s $argv
	end
end

function cdwd
	z ~/proj/b
end

function prg
	rg -t perl $argv
end

function git-doall
	git add .
	git commit -m "{$argv[1]}"
	git push
end

function bs
	bsh dev
end

function fish_greeting
	fortune
end

# Configs
set -U editor kak
set -U TZ /usr/share/zoneinfo/US/Eastern

zoxide init fish | source
starship init fish | source
