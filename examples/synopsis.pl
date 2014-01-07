    use Schedule::Poll;
    use Data::Dumper;
   
    # Let's run a few things every 3 seconds,
    # and some things every 6 seconds
 
    my $config = {
        foo => 3,
        bar => 3,
        baz => 3,
        zip => 6,
        zoo => 6,
        zat => 6
    };

    my $poll = Schedule::Poll->new( $config );
    
    while(1) {

        if (my $aref =  $poll->which  ) {

            for my $each (@$aref) {

                print "$each fired!\n";
            }
        }
        sleep 1;
    }
