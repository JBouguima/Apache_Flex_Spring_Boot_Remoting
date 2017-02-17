/**
 * 
 * @author Jileni BOUGUIMA
 *
 * 14 janv. 2017
 *
 * crudflexspring / MovementServiceImpl.java
 *
 **/
package com.jbouguima.remoting.services;

import org.springframework.flex.remoting.RemotingDestination;
import org.springframework.stereotype.Service;

@Service("movementService")
@RemotingDestination
public class MovementServiceImpl implements MovementService {

	/* (non-Javadoc)
	 * @see org.apache.flex.blazeds.examples.services.MovementService#stop()
	 */
	public void stop() {
		// TODO Auto-generated method stub
		System.out.println("Stop");
	}

	/* (non-Javadoc)
	 * @see org.apache.flex.blazeds.examples.services.MovementService#moveForward()
	 */
	public void moveForward() {
		// TODO Auto-generated method stub
		System.out.println("Forward");
	}

	/* (non-Javadoc)
	 * @see org.apache.flex.blazeds.examples.services.MovementService#moveLeft()
	 */
	public void moveLeft() {
		// TODO Auto-generated method stub
		System.out.println("Left");
	}

	/* (non-Javadoc)
	 * @see org.apache.flex.blazeds.examples.services.MovementService#moveRight()
	 */
	public void moveRight() {
		// TODO Auto-generated method stub
		System.out.println("Right");
	}

	/* (non-Javadoc)
	 * @see org.apache.flex.blazeds.examples.services.MovementService#moveBack()
	 */
	public void moveBack() {
		// TODO Auto-generated method stub
		System.out.println("Back");
	}

}
