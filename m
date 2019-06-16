Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0612347368
	for <lists+tipc-discussion@lfdr.de>; Sun, 16 Jun 2019 08:53:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hcP2x-00069J-VN; Sun, 16 Jun 2019 06:53:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1hcP2v-000699-Tg
 for tipc-discussion@lists.sourceforge.net; Sun, 16 Jun 2019 06:53:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gQpLbwktEv+yTwdo1SdD8JU/zEkoiXHohJ9YUJDSTj4=; b=JfO2nrHunz4D0Ocr6mNUm4lYOW
 Qp1ZC4BI2mmaBhv3X0GJRLcdCLvbSN6uDn4Anqpj+E/2RnFqV0TLY2dIyBzH2QCaowl2rtkW7AEng
 LMD6bhT9e0yboZZaSZzG3jnKn/4zjVmE9CFVEfUOpeE6dtgMhMWqke4ev5YhULECg22M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gQpLbwktEv+yTwdo1SdD8JU/zEkoiXHohJ9YUJDSTj4=; b=hUx6tN9uI3kQ1z+FlrFxSJwXvn
 KVtpwLwg1R9WDE+MQMWBb9EnWP2DbblKN3x4O4NAPh/A82oBCz2NGGPl5mBdKy2bmfSEbJGHKPq0R
 3BXzXo10gfxVWFJKSaz0YpG5q0I4FA99ZExPG7v0/I+aWleoTl0MceXax8Ci7B11ofRU=;
Received: from mail5.windriver.com ([192.103.53.11] helo=mail5.wrs.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hcP2p-00AFxR-RB
 for tipc-discussion@lists.sourceforge.net; Sun, 16 Jun 2019 06:53:43 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x5G6qDKF029952
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Sat, 15 Jun 2019 23:52:29 -0700
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0; Sat, 15 Jun
 2019 23:52:03 -0700
To: Tuong Lien <tuong.t.lien@dektech.com.au>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>
References: <20190604052239.9352-1-tuong.t.lien@dektech.com.au>
 <20190604052239.9352-3-tuong.t.lien@dektech.com.au>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <ed976f06-6034-203e-7170-fbdef7074019@windriver.com>
Date: Sun, 16 Jun 2019 14:42:03 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190604052239.9352-3-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hcP2p-00AFxR-RB
Subject: Re: [tipc-discussion] [PATCH RFC 2/2] tipc: fix changeover issues
 due to large packet
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

> 2) The same scenario above can happen more easily in case the MTU of
> the links is set differently or when changing. In that case, as long as
> a large message in the failure link's transmq queue was built and
> fragmented with its link's MTU > the other link's one, the issue will
> happen (there is no need of a link synching in advance).
> 
> 3) The link synching procedure also faces with the same issue but since
> the link synching is only started upon receipt of a SYNCH_MSG, dropping
> the message will not result in a state deadlock, but it is not expected
> as design.
> 
> The 1) & 3) issues are resolved by the previous commit 81e4dd94b214

This is the same as previous commit. The commit ID might be invalid
after it's merged into upstream.

> ("tipc: optimize link synching mechanism") by generating only a dummy
> SYNCH_MSG (i.e. without data) at the link synching, so the size of a
> FAILOVER_MSG if any then will never exceed the link's MTU.

>  /**
> + * tipc_msg_fragment - build a fragment skb list for TIPC message
> + *
> + * @skb: TIPC message skb
> + * @hdr: internal msg header to be put on the top of the fragments
> + * @pktmax: max size of a fragment incl. the header
> + * @frags: returned fragment skb list
> + *
> + * Returns 0 if the fragmentation is successful, otherwise: -EINVAL
> + * or -ENOMEM
> + */
> +int tipc_msg_fragment(struct sk_buff *skb, const struct tipc_msg *hdr,
> +		      int pktmax, struct sk_buff_head *frags)
> +{
> +	int pktno, nof_fragms, dsz, dmax, eat;
> +	struct tipc_msg *_hdr;
> +	struct sk_buff *_skb;
> +	u8 *data;
> +
> +	/* Non-linear buffer? */
> +	if (skb_linearize(skb))
> +		return -ENOMEM;
> +
> +	data = (u8 *)skb->data;
> +	dsz = msg_size(buf_msg(skb));
> +	dmax = pktmax - INT_H_SIZE;
> +
> +	if (dsz <= dmax || !dmax)
> +		return -EINVAL;
> +
> +	nof_fragms = dsz / dmax + 1;
> +
> +	for (pktno = 1; pktno <= nof_fragms; pktno++) {
> +		if (pktno < nof_fragms)
> +			eat = dmax;
> +		else
> +			eat = dsz % dmax;
> +
> +		_skb = tipc_buf_acquire(INT_H_SIZE + eat, GFP_ATOMIC);
> +		if (!_skb)
> +			goto error;
> +
> +		skb_orphan(_skb);
> +		__skb_queue_tail(frags, _skb);
> +
> +		skb_copy_to_linear_data(_skb, hdr, INT_H_SIZE);
> +		skb_copy_to_linear_data_offset(_skb, INT_H_SIZE, data, eat);
> +		data += eat;
> +
> +		_hdr = buf_msg(_skb);
> +		msg_set_fragm_no(_hdr, pktno);
> +		msg_set_nof_fragms(_hdr, nof_fragms);
> +		msg_set_size(_hdr, INT_H_SIZE + eat);
> +	}
> +	return 0;
> +

In fact we have similar code in tipc_msg_build() where we also fragment
packet if necessary. In order to eliminate redundant code, I suggest we
should extract the common code into a separate function and then
tipc_msg_build() and tipc_msg_fragment() call it.



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
