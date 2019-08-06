BEGIN{
    printf("%5s\t\t%-s\n","COUNT","USER")
}
NR != 1 {
    a[$1]++
}
END{
    for (i in a){
        printf("%5s\t\t%-s\n",a[i],i) | "sort -r -n -k1"
    }
}

