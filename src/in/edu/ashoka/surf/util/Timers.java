package in.edu.ashoka.surf.util;

import org.apache.commons.lang3.time.StopWatch;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * Created by hangal on 8/13/17.
 */
public class Timers {
    public static Log log = LogFactory.getLog(in.edu.ashoka.surf.Tokenizer.class);

    public static StopWatch canonTimer = new StopWatch();
    public static StopWatch tokenizationTimer = new StopWatch();
    public static StopWatch editDistanceTimer = new StopWatch();
    public static StopWatch unionFindTimer = new StopWatch();

    public static void print() {
        log.info ("Canonicalization: " + canonTimer);
        log.info ("Tokenization: " + tokenizationTimer);
        log.info ("Edit distance computation: " + editDistanceTimer);
        log.info ("Union Find: " + unionFindTimer);
    }
}
