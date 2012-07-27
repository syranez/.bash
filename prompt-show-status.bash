# This snippet show takes $? and outputs
#+ nice emoticons visualizing the result of the
#+ last executed command.

# enhances the bash prompt with emoticons visualizing the last status
#
# @param $1 status code
# @output emoticon
__bash_prompt_last () {

    local last="$1";
    local output="";

    if [[ $last = "0" ]]; then
        output="^_^";
    elif [[ $last = "127" ]]; then
        output="o_O";
    else
        output="x_X";
    fi;

    printf "%s " $output;
}
