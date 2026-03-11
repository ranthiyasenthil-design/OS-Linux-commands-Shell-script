BEGIN {
}

{
    len = length($0)
    print len, "\t", $0
    wordcount += NF
    chrcnt += len
}

END {
    print "Total characters:", chrcnt
    print "Number of lines:", NR
    print "Number of words:", wordcount
}
