main()
{
    thread bdb_track_rounds();
}

bdb_track_rounds()
{
    last_round = -1;

    for (;;)
    {
        if (isDefined(level.round_number))
        {
            if (level.round_number != last_round)
            {
                last_round = level.round_number;
                iprintlnbold("BDB ROUND: " + last_round);
            }
        }

        wait 1;
    }
}