Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59423189E3C
	for <lists+tipc-discussion@lfdr.de>; Wed, 18 Mar 2020 15:47:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jEZyp-0000Jl-Si; Wed, 18 Mar 2020 14:47:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jEZyo-0000JX-9u
 for tipc-discussion@lists.sourceforge.net; Wed, 18 Mar 2020 14:47:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3j0n0sZweWsvMu4GD/WK/xWz8VP8lLwi5ftEAzbPAQo=; b=faVPT2xoIelFtz+miureouzuBY
 WjReCGehGv0rELipW9f5Ex9yBXM1axPhyXr0mwwWTulAfsuHFYt2KOXrfLS0oFd1EQUEDyMrFACva
 gQdF2IAV/J26HqfksBdl1jYCTVgxUFXLRV/HtIsq7gv9m38hZPjIttoC+CSGYPkbH1wc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3j0n0sZweWsvMu4GD/WK/xWz8VP8lLwi5ftEAzbPAQo=; b=Lzy8LzjPKo8ZGUvs3+AHS/vyx0
 c71LUN00IouD/D3z/C5psvzz01xvfBYitEJhs9uq0451yjoW6+5Gw29Vun9fxcPYjQiBQ24XXuVYO
 HZ+aFE5hLfKqkYuM6VmHliQP39snfij2V4nA3Xk0gj110VsysoRzA8wJzJ1Tzb9vQ9ao=;
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jEZyk-00Gy85-B2
 for tipc-discussion@lists.sourceforge.net; Wed, 18 Mar 2020 14:47:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584542841;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3j0n0sZweWsvMu4GD/WK/xWz8VP8lLwi5ftEAzbPAQo=;
 b=RK086pzNxpoPaSpmxJDFy4rw1oOqFZQQxR+yGtkaaf3dnV38NskRzngKmFDl/TuZaYap9g
 TyD0VhVct2X0vmEqV4aqGpN8224vXdrX1UzZYcUDW0C+mvnm8MFUgI9IWFKBxKgbZClxir
 4o2NOHOiY46/1t5gn4wwLdSVcii2Xxs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-275-lKcwIoQENfeLfLCCicahFA-1; Wed, 18 Mar 2020 10:47:17 -0400
X-MC-Unique: lKcwIoQENfeLfLCCicahFA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 373EE800EB6;
 Wed, 18 Mar 2020 14:47:16 +0000 (UTC)
Received: from [10.10.112.60] (ovpn-112-60.rdu2.redhat.com [10.10.112.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A14325C1A0;
 Wed, 18 Mar 2020 14:47:14 +0000 (UTC)
To: Tuong Lien Tong <tuong.t.lien@dektech.com.au>,
 'Jon Maloy' <jon.maloy@ericsson.com>, 'Jon Maloy' <maloy@donjonn.com>
References: <1575246751-23238-1-git-send-email-jon.maloy@ericsson.com>
 <1575246751-23238-4-git-send-email-jon.maloy@ericsson.com>
 <022f01d5fc4a$967558f0$c3600ad0$@dektech.com.au>
 <17a00b52-ef0e-f26b-a178-9093869d25a7@redhat.com>
 <025f01d5fce0$b22523f0$166f6bd0$@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <c8a9fdec-032d-1dd2-081c-dea92a2503da@redhat.com>
Date: Wed, 18 Mar 2020 10:47:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <025f01d5fce0$b22523f0$166f6bd0$@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jEZyk-00Gy85-B2
Subject: Re: [tipc-discussion] [net-next 3/3] tipc: introduce variable
 window congestion control
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
Cc: mohan.krishna.ghanta.krishnamurthy@ericsson.com,
 tipc-discussion@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 3/18/20 12:50 AM, Tuong Lien Tong wrote:
> Hi Jon,
>
> Ok, that makes sense (but we should have covered the case a broadcast packet is released too...).
> However, I have another concern about the logic here:
>
>> +	/* Enter fast recovery */
>> +	if (unlikely(retransmitted)) {
>> +		l->ssthresh = max_t(u16, l->window / 2, 300);
>> +		l->window = l->ssthresh;
>> +		return;
>> +	}
> What will if we have a retransmission when it's still in the slow-start phase? For example:
> l->ssthresh = 300
> l-> window = 60
> ==> retransmitted = true, then: l->ssthresh = 300; l->window = 300???
>
> This looks not correct?
> Should it be:
>
>> +	/* Enter fast recovery */
>> +	if (unlikely(retransmitted)) {
>> +		l->ssthresh = max_t(u16, l->window / 2, 300);
>> -		l->window = l->ssthresh;
>> +		l->window = min_t(u16, l->window, l->ssthresh);
>> +		return;
>> +	}
> So will fix the issue with broadcast case as well?
Yes, this would fix both issues, so I think it is a good suggestion.
To my surprise I have realized that this code has not been released yet 
(I only find it in 5.6-rc1 and later versions) but maybe that is just as 
well ;-)

///jon

>
> BR/Tuong
>
> -----Original Message-----
> From: Jon Maloy <jmaloy@redhat.com>
> Sent: Wednesday, March 18, 2020 1:38 AM
> To: Tuong Lien Tong <tuong.t.lien@dektech.com.au>; 'Jon Maloy' <jon.maloy@ericsson.com>; 'Jon Maloy' <maloy@donjonn.com>
> Cc: tipc-discussion@lists.sourceforge.net; mohan.krishna.ghanta.krishnamurthy@ericsson.com
> Subject: Re: [tipc-discussion] [net-next 3/3] tipc: introduce variable window congestion control
>
>
>
> On 3/17/20 6:55 AM, Tuong Lien Tong wrote:
>> Hi Jon,
>>
>> For the "variable window congestion control" patch, if I remember correctly,
>> it is for unicast link only? Why did you apply it for broadcast link, a
>> mistake or ...?
> I did it so the code would be the same everywhere. Then, by setting both
> min_win and max_win to the same value BC_LINK_WIN_DEFAULT (==50)
> in the broadcast send link this window should never change.
>
>> It now causes user messages disordered on the receiving side, because on the
>> sending side, the broadcast link's window is suddenly increased to 300 (i.e.
>> max_t(u16, l->window / 2, 300)) at a packet retransmission, leaving some
>> gaps between the link's 'transmq' & 'backlogq' unexpectedly... Will we fix
>> this by removing it?
> That is clearly a bug that breaks the above stated limitation.
> It should be sufficient to check that also l->ssthresh never exceeds
> l->max_win to remedy this.
>
> ///jon
>
>> @@ -1160,7 +1224,6 @@ static int tipc_link_bc_retrans(struct tipc_link *l,
>> struct tipc_link *r,
>>    			continue;
>>    		if (more(msg_seqno(hdr), to))
>>    			break;
>> -
>>    		if (time_before(jiffies, TIPC_SKB_CB(skb)->nxt_retr))
>>    			continue;
>>    		TIPC_SKB_CB(skb)->nxt_retr = TIPC_BC_RETR_LIM;
>> @@ -1173,11 +1236,12 @@ static int tipc_link_bc_retrans(struct tipc_link *l,
>> struct tipc_link *r,
>>    		_skb->priority = TC_PRIO_CONTROL;
>>    		__skb_queue_tail(xmitq, _skb);
>>    		l->stats.retransmitted++;
>> -
>> +		retransmitted++;
>>    		/* Increase actual retrans counter & mark first time */
>>    		if (!TIPC_SKB_CB(skb)->retr_cnt++)
>>    			TIPC_SKB_CB(skb)->retr_stamp = jiffies;
>>    	}
>> +	tipc_link_update_cwin(l, 0, retransmitted);             // ???
>>    	return 0;
>>    }
>>
>> +static void tipc_link_update_cwin(struct tipc_link *l, int released,
>> +				  bool retransmitted)
>> +{
>> +	int bklog_len = skb_queue_len(&l->backlogq);
>> +	struct sk_buff_head *txq = &l->transmq;
>> +	int txq_len = skb_queue_len(txq);
>> +	u16 cwin = l->window;
>> +
>> +	/* Enter fast recovery */
>> +	if (unlikely(retransmitted)) {
>> +		l->ssthresh = max_t(u16, l->window / 2, 300);
>> +		l->window = l->ssthresh;
>> +		return;
>> +	}
>>
>> BR/Tuong
>>
>> -----Original Message-----
>> From: Jon Maloy <jon.maloy@ericsson.com>
>> Sent: Monday, December 2, 2019 7:33 AM
>> To: Jon Maloy <jon.maloy@ericsson.com>; Jon Maloy <maloy@donjonn.com>
>> Cc: mohan.krishna.ghanta.krishnamurthy@ericsson.com;
>> parthasarathy.bhuvaragan@gmail.com; tung.q.nguyen@dektech.com.au;
>> hoang.h.le@dektech.com.au; tuong.t.lien@dektech.com.au;
>> gordan.mihaljevic@dektech.com.au; ying.xue@windriver.com;
>> tipc-discussion@lists.sourceforge.net
>> Subject: [net-next 3/3] tipc: introduce variable window congestion control
>>
>> We introduce a simple variable window congestion control for links.
>> The algorithm is inspired by the Reno algorithm, covering both 'slow
>> start', 'congestion avoidance', and 'fast recovery' modes.
>>
>> - We introduce hard lower and upper window limits per link, still
>>     different and configurable per bearer type.
>>
>> - We introduce as 'slow start theshold' variable, initially set to
>>     the maximum window size.
>>
>> - We let a link start at the minimum congestion window, i.e. in slow
>>     start mode, and then let is grow rapidly (+1 per rceived ACK) until
>>     it reaches the slow start threshold and enters congestion avoidance
>>     mode.
>>
>> - In congestion avoidance mode we increment the congestion window for
>>     each window_size number of acked packets, up to a possible maximum
>>     equal to the configured maximum window.
>>
>> - For each non-duplicate NACK received, we drop back to fast recovery
>>     mode, by setting the both the slow start threshold to and the
>>     congestion window to (current_congestion_window / 2).
>>
>> - If the timeout handler finds that the transmit queue has not moved
>>     timeout, it drops the link back to slow start and forces a probe
>>     containing the last sent sequence number to the sent to the peer.
>>
>> This change does in reality have effect only on unicast ethernet
>> transport, as we have seen that there is no room whatsoever for
>> increasing the window max size for the UDP bearer.
>> For now, we also choose to keep the limits for the broadcast link
>> unchanged and equal.
>>
>> This algorithm seems to give a 50-100% throughput improvement for
>> messages larger than MTU.
>>
>> Suggested-by: Xin Long <lucien.xin@gmail.com>
>> Acked-by: Xin Long <lucien.xin@gmail.com>
>> Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
>> ---
>>    net/tipc/bcast.c     |  11 ++--
>>    net/tipc/bearer.c    |  11 ++--
>>    net/tipc/bearer.h    |   6 +-
>>    net/tipc/eth_media.c |   3 +-
>>    net/tipc/ib_media.c  |   5 +-
>>    net/tipc/link.c      | 175
>> +++++++++++++++++++++++++++++++++++----------------
>>    net/tipc/link.h      |   9 +--
>>    net/tipc/node.c      |  16 ++---
>>    net/tipc/udp_media.c |   3 +-
>>    9 files changed, 160 insertions(+), 79 deletions(-)
>>
>>
>>
>>
>>
>>
>>
>> _______________________________________________
>> tipc-discussion mailing list
>> tipc-discussion@lists.sourceforge.net
>> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
>>
>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
