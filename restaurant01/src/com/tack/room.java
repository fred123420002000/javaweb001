package com.tack;

import com.model.res;

public class room implements tack {

	@Override
	public int tack(res res) {
		return (int)(res.getSum()*1.1);
	}

}
