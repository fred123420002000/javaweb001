package com.tack;

import com.model.res;

public class seat implements tack {

	@Override
	public int tack(res res) {
		return (int)(res.getSum()*1.05);
	}

}
