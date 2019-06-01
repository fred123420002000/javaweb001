package com.tack;

import com.model.res;

public class out implements tack {

	@Override
	public int tack(res res) {
		return (int)(res.getSum()*0.95);
	}

}
