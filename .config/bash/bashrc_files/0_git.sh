alias git=custom_git

function custom_git() {
	case "${1}" in

		# General
		s) \git status --show-stash --ahead-behind ;;
		a) \git add -A ;;
		c) \git commit -m ;;
		ca) \git commit -am ;;
		p) \git push --set-upstream origin @ ;;
		lg) \git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(white)%s%C(reset) %C(dim white) %C(bold yellow)%d%C(reset)' --all ;;
		lgfull) \git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''%C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all ;;

		# Branch
		bl)	\git branch -a --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(contents:subject) %(color:green)(%(committerdate:relative)) [%(authorname)]' --sort=-committerdate ;;
		bs)	if [[ $(\git branch --list | grep "${2}" | wc -l) -eq 0 ]]; then \git switch -c "${2}"; else \git switch "${2}"; fi ;;
		bm) git merge --no-ff --no-edit "${2}" ;;
		bd)
			if $(\git show-ref --verify --quiet "refs/heads/${2}"); then \git branch -d "${2}"; fi
			if $(\git show-ref --verify --quiet "refs/remotes/origin/${2}"); then \git push origin --delete "${2}"; fi
			;;

		# Stash
		sl) \git stash list ;;
		ss) \git stash save ;;
		sa) \git stash apply "stash@{${2}}" ;;
		sd) \git stash drop "stash@{${2}}" ;;

		# Review
		review) \git status --verbose --show-stash --ahead-behind -v ;;
		changes) \git diff HEAD~1 ;;
		undo) \git reset --soft HEAD~1 ;;
		unstage) \git restore --staged ;;
		rst) \git clean -fd ;;

		# Others
		alias) echo 'General: [s,a,c,ca,p,lg,lgfull], Branch: [bl,bs,bm,bd], Stash: [sl,ss,sa,sd], Review: [review,changes,undo,unstage,rst], Others: [alias,profile,*]' ;;
		#alias) \git config --get-regexp ^alias | sed 's/^alias.//g' | sed -E 's/^([^ ]+ )/\1= /g' ;;
		profile) custom_profile $(echo "${@}" | awk '{ $1=""; print $0 }') ;;
		*) \git "${@}" ;;
	esac
}

function custom_profile() {
	case "${1:-show}" in
		show) echo "name: $(\git config user.name), email: $(\git config user.email), key: $(if $(ssh-add -l &> /dev/null); then ssh-add -l | awk '{ print $3 }'; else echo 'none'; fi)" ;;
		*) \git config --global include.path "${HOME}/.config/git/${1}" && ssh-add -D && ssh-add "${HOME}/.ssh/${1}" ;;
	esac
}

git profile sizzleru &> /dev/null
