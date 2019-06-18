Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E08DB4A077
	for <lists+tipc-discussion@lfdr.de>; Tue, 18 Jun 2019 14:13:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hdCz5-0003Cc-Q2; Tue, 18 Jun 2019 12:13:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1hdCz5-0003CM-6J
 for tipc-discussion@lists.sourceforge.net; Tue, 18 Jun 2019 12:13:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=geaxu+2LPp5w9kU6EMk15/i2KPM5I59rdaS0ZIp0w3g=; b=Gt1Ubbjvm2LxEA41eGqQIHnsR8
 ACylXmjOPnvmF8pzh3pvu9CAjkDLr0IDf6W+VYXjojvjbFP1ioh7kkr8xjJ985KKHoXLJhDS0dogS
 p+CykgFqIWoJLX5y/lNQQdUFtYaIhzvME3s9JIFACaf3QhdPtyeYMM1C39C7IK7BDnAQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=geaxu+2LPp5w9kU6EMk15/i2KPM5I59rdaS0ZIp0w3g=; b=LgfZLBc0JhmGSZKaU6CSDzVjZI
 bbW91nvn7bPm6QzgkX39MkBNBpKejJpVRhjn3S/RUNuDduUi+eNARmaZnu4MYRZq2sjvAN7QlA4PD
 ehgrPuqdO/ydNP3AiCc2wc5h8i/gOGPUnBmp1XGwPFAHj9qUL3yXcfsL3xWGAgDGG0Zk=;
Received: from mail1.windriver.com ([147.11.146.13])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.90_1) id 1hdCz2-003Gyz-1S
 for tipc-discussion@lists.sourceforge.net; Tue, 18 Jun 2019 12:13:05 +0000
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
 by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x5ICCgmd010883
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Tue, 18 Jun 2019 05:12:44 -0700 (PDT)
Received: from ALA-MBD.corp.ad.wrs.com ([169.254.3.194]) by
 ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.03.0439.000; Tue,
 18 Jun 2019 05:12:41 -0700
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Tuong Lien Tong <tuong.t.lien@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "jon.maloy@ericsson.com"
 <jon.maloy@ericsson.com>, "maloy@donjonn.com" <maloy@donjonn.com>
Thread-Topic: [PATCH RFC 2/2] tipc: fix changeover issues due to large packet
Thread-Index: AdUkEBXhB6jxCFFoRAizE2i1r1NvrABFB9gAACqyazA=
Date: Tue, 18 Jun 2019 12:12:41 +0000
Message-ID: <25A14D9CFAB7B34FB9440F90AFD35233013C8C9EFF@ALA-MBD.corp.ad.wrs.com>
References: <20190604052239.9352-1-tuong.t.lien@dektech.com.au>
 <20190604052239.9352-3-tuong.t.lien@dektech.com.au>
 <ed976f06-6034-203e-7170-fbdef7074019@windriver.com>
 <02a001d524e9$8adb5eb0$a0921c10$@dektech.com.au>
In-Reply-To: <02a001d524e9$8adb5eb0$a0921c10$@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.17.200]
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hdCz2-003Gyz-1S
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

Hi Tuong.

Thank you for your explanation . It makes sense to me. 
Please go ahead. 

Thanks,
Ying

-----Original Message-----
From: Tuong Lien Tong [mailto:tuong.t.lien@dektech.com.au] 
Sent: Monday, June 17, 2019 4:49 PM
To: Xue, Ying; tipc-discussion@lists.sourceforge.net; jon.maloy@ericsson.com; maloy@donjonn.com
Subject: RE: [PATCH RFC 2/2] tipc: fix changeover issues due to large packet

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
