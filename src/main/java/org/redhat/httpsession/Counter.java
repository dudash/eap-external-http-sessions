package org.redhat.httpsession;

import java.io.IOException;
import java.io.Serializable;
import org.jboss.logging.Logger;

/**
 * This class is a common class that increments a counter and it's store inside
 * HTTP Session in the index.jsp presentation layer. The target is to show how
 * the counter continue to increment its value accross the cluster.
 *
 * @author Mauro Vocale
 * @version 1.0 30/04/2018
 */
public class Counter implements Serializable {

    /**
     * A version number for this class so that serialization can occur without
     * worrying about the underlying class changing between serialization and
     * deserialization.
     */
    private static final long serialVersionUID = 6604436849415136871L;
    
    /**
     * The Logger instance. All LOG messages from this class are routed through
     * this member. The Logger namespace is the name class.
     */
    public static final Logger LOGGER = Logger.getLogger(Counter.class);
    
    /**
     * Global counter that simulates the stateful information.
     */
    private int counter = 0;
    
    /**
     * Public constructor.
     */
    public Counter() {
        LOGGER.info("************************");
        LOGGER.info("Counter is created");
        LOGGER.info("************************");
    }
    
    /**
     * Method that increments the global counter.
     * 
     * @return The updated global counter.
     */
    public int getIncrementedValue() {
        return ++this.counter;
    }
    
    /**
     * Serialization method.
     * 
     * @param out ObjectOutputStream where write informations.
     * @throws IOException 
     */
    private void writeObject(java.io.ObjectOutputStream out)
            throws IOException {
        LOGGER.info("****************************");
        LOGGER.info("Processing serialization");
        LOGGER.info("Counter = " + this.counter);
        LOGGER.info("****************************");
        out.defaultWriteObject();
    }
    
    /**
     * Default deserialization method
     * 
     * @param in ObjectInputStream from which retrieve the informations.
     * 
     * @throws IOException
     * @throws ClassNotFoundException 
     */
    private void readObject(java.io.ObjectInputStream in)
            throws IOException, ClassNotFoundException {
        in.defaultReadObject();
        LOGGER.info("****************************");
        LOGGER.info("Processing Deserialization");
        LOGGER.info("Counter = " + this.counter);
        LOGGER.info("****************************");
    }
}
