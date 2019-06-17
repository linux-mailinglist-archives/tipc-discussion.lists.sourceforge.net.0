Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4C247D8B
	for <lists+tipc-discussion@lfdr.de>; Mon, 17 Jun 2019 10:49:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hcnKU-0004Kz-GA; Mon, 17 Jun 2019 08:49:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1hcnKT-0004Km-25
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Jun 2019 08:49:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GZih52jwIGqu3463Zn6yI4G4zH5JFGKi8CgYcSZCGO4=; b=hw4pUnMym3qQRrc0FLy3q36YC0
 bhx2aVUpBrpFGUPcgx2MszaV/1yUUkXavMp6M8FLjx5dsM6pq1YnuLoOpWd6JI7bZhkz5erbuSpth
 BRSAOnGw4Id12BdUFtV6rh5ecFa1UJ01+DTEQa4UHrAQh3f/Xvhtix4G4w9cXF5U3IdA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GZih52jwIGqu3463Zn6yI4G4zH5JFGKi8CgYcSZCGO4=; b=mv9J3c7HJjersHocBDcUr5nxkO
 3QdTDnlUYYVRnEwGYkh3XdrXnl+v0QySiPFxx0EABSHrmbGGEl7FNEoLnfBEhQAKZlW0wKVvHbgdN
 8QOgIOCeWXp5euFy6Kz43/GcJCxROcqLB6DrY8vv2yhWgfzPs3ljeZ/7sXk2veN+GvYc=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hcnKP-00149J-10
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Jun 2019 08:49:29 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 895B7E4FB5;
 Mon, 17 Jun 2019 18:49:17 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1560761357; bh=uHACBr4IABXhbn
 lhovLjrGP4YnTjuKR9h5uDixiGApc=; b=QJos61eudCdOnx0rH5F2PxI936yxYD
 Y5mLF4f5JDXqMsx836gcGNV2Uo/Tuoxw9BYQ7q3SSsVqWXKvTRBAXbUBr7/8lxDc
 6DVYcI4Bmr9aytfRLD/IEtf4A9QAnjed2RJSeTdVkSrdJerBAevAIGmSIL8YHeWA
 Wek8EvGw4kzm8=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id gSFuCyEVYIuQ; Mon, 17 Jun 2019 18:49:17 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 36962E4FB6;
 Mon, 17 Jun 2019 18:49:17 +1000 (AEST)
Received: from VNLAP288VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id D8217E4FB5;
 Mon, 17 Jun 2019 18:49:15 +1000 (AEST)
From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
To: "'Ying Xue'" <ying.xue@windriver.com>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>
References: <20190604052239.9352-1-tuong.t.lien@dektech.com.au>
 <20190604052239.9352-3-tuong.t.lien@dektech.com.au>
 <ed976f06-6034-203e-7170-fbdef7074019@windriver.com>
In-Reply-To: <ed976f06-6034-203e-7170-fbdef7074019@windriver.com>
Date: Mon, 17 Jun 2019 15:49:12 +0700
Message-ID: <02a001d524e9$8adb5eb0$a0921c10$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQIM6M5SwoF7ZkqbCWDjrOpoblsc2AKMDrpeAVpdwcmmEMhvMA==
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hcnKP-00149J-10
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

Hi Ying,

Thanks for your comments!
Regarding your last statement, yes when making the patch, I noticed that the "tipc_msg_build()" and "tipc_msg_fragment()" do a similar task, also I tried to think a way to combine them but didn't because of the reasons:
1- The "core" functions to copy the data are different since the "tipc_msg_build()" plays with user data in the iov buffers, whereas, for the other, it's skb data.
Also, the outputs are different, the first function will set the messages' type in header such as "FIRST_FRAGMENT", "FRAGMENT" or "LAST_FRAGMENT", but not with the other because it will overwrite the tunnel messages' type... that I had to use the other field (fragm_no/nof_fragms) to determine this at the receiving side...
2- I don't want to touch the old code that can be risky :(

BR/Tuong

-----Original Message-----
From: Ying Xue <ying.xue@windriver.com> 
Sent: Sunday, June 16, 2019 1:42 PM
To: Tuong Lien <tuong.t.lien@dektech.com.au>; tipc-discussion@lists.sourceforge.net; jon.maloy@ericsson.com; maloy@donjonn.com
Subject: Re: [PATCH RFC 2/2] tipc: fix changeover issues due to large packet

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
