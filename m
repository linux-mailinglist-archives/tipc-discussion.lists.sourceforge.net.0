Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAF1189513
	for <lists+tipc-discussion@lfdr.de>; Wed, 18 Mar 2020 05:50:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jEQew-0004kR-L6; Wed, 18 Mar 2020 04:50:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jEQet-0004k4-TS
 for tipc-discussion@lists.sourceforge.net; Wed, 18 Mar 2020 04:50:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CvPdjeKI5JezxKIWWXgWxTLMea9OIRAqPUB1gxRAb1Q=; b=kl+l0PEYUBwPiemodOLBjC8Ruy
 6XoPCo5k/QVnEtIvRbvaWRmP07z8w+OiuRvpRYsiP50yBx7u4h54zgqiQH4nOenAyExp5CpDwMWsX
 yNm299P2VvvK9JdncwD/VTT84Toe11yEEXzT9WAQKR2e5doffjcbh+3KMBf7k8xM/9Kg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CvPdjeKI5JezxKIWWXgWxTLMea9OIRAqPUB1gxRAb1Q=; b=NdXTgtmHuErWSU86BRjGQC2Q+J
 Nx1Tn/7uxmaEbMVIZeN3tYQU+u9vgWfeRaOJD2e/oyxbc+pmYEpQPleVf2XfTjg0W63FB6dj+MeeK
 RDyD5idkvHb+a82McClI56rVDQY0ozXTTjYZjKu0CIl49bpYJxESyIYuOWTjAU4J9lIM=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jEQem-00FtdI-CT
 for tipc-discussion@lists.sourceforge.net; Wed, 18 Mar 2020 04:50:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 0FAE84B335;
 Wed, 18 Mar 2020 15:50:08 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1584507007; bh=vnIQpFHg0Ypu2c
 D3HKUdox2WY6OZ22nSN/vxSRyDOpY=; b=Inyffe3JH79oi4zTUAo15dfu4/95Mx
 4j47HDFK3rB/P1zMV0WYlsTY4DExpysaeFD3DqQ2PU7J0ptg5ZzDJC0fji1HOIes
 eQd057wpaJJ6EDmyPBg97KHYLYkqZ4nuaDaCf3NMM0qI8hsmyX/27kcsoThGsxkW
 +qbzT7niTwFWY=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id lIlZQOgu2IGr; Wed, 18 Mar 2020 15:50:07 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 55F874B336;
 Wed, 18 Mar 2020 15:50:07 +1100 (AEDT)
Received: from VNLAP288VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 202264B335;
 Wed, 18 Mar 2020 15:50:05 +1100 (AEDT)
From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
To: "'Jon Maloy'" <jmaloy@redhat.com>, "'Jon Maloy'" <jon.maloy@ericsson.com>,
 "'Jon Maloy'" <maloy@donjonn.com>
References: <1575246751-23238-1-git-send-email-jon.maloy@ericsson.com>
 <1575246751-23238-4-git-send-email-jon.maloy@ericsson.com>
 <022f01d5fc4a$967558f0$c3600ad0$@dektech.com.au>
 <17a00b52-ef0e-f26b-a178-9093869d25a7@redhat.com>
In-Reply-To: <17a00b52-ef0e-f26b-a178-9093869d25a7@redhat.com>
Date: Wed, 18 Mar 2020 11:50:00 +0700
Message-ID: <025f01d5fce0$b22523f0$166f6bd0$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQMX0HZSpNOOSugVxZj39FS3/AoP9gGIv5EPAj9DZ3kCiHPSYKWXk+IA
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 FORGED_SPF_HELO        No description available.
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jEQem-00FtdI-CT
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Jon,

Ok, that makes sense (but we should have covered the case a broadcast packet is released too...).
However, I have another concern about the logic here:

> +	/* Enter fast recovery */
> +	if (unlikely(retransmitted)) {
> +		l->ssthresh = max_t(u16, l->window / 2, 300);
> +		l->window = l->ssthresh;
> +		return;
> +	}

What will if we have a retransmission when it's still in the slow-start phase? For example:
l->ssthresh = 300
l-> window = 60
==> retransmitted = true, then: l->ssthresh = 300; l->window = 300???

This looks not correct?
Should it be:

> +	/* Enter fast recovery */
> +	if (unlikely(retransmitted)) {
> +		l->ssthresh = max_t(u16, l->window / 2, 300);
> -		l->window = l->ssthresh;
> +		l->window = min_t(u16, l->window, l->ssthresh);
> +		return;
> +	}

So will fix the issue with broadcast case as well?

BR/Tuong

-----Original Message-----
From: Jon Maloy <jmaloy@redhat.com> 
Sent: Wednesday, March 18, 2020 1:38 AM
To: Tuong Lien Tong <tuong.t.lien@dektech.com.au>; 'Jon Maloy' <jon.maloy@ericsson.com>; 'Jon Maloy' <maloy@donjonn.com>
Cc: tipc-discussion@lists.sourceforge.net; mohan.krishna.ghanta.krishnamurthy@ericsson.com
Subject: Re: [tipc-discussion] [net-next 3/3] tipc: introduce variable window congestion control



On 3/17/20 6:55 AM, Tuong Lien Tong wrote:
> Hi Jon,
>
> For the "variable window congestion control" patch, if I remember correctly,
> it is for unicast link only? Why did you apply it for broadcast link, a
> mistake or ...?
I did it so the code would be the same everywhere. Then, by setting both
min_win and max_win to the same value BC_LINK_WIN_DEFAULT (==50)
in the broadcast send link this window should never change.

> It now causes user messages disordered on the receiving side, because on the
> sending side, the broadcast link's window is suddenly increased to 300 (i.e.
> max_t(u16, l->window / 2, 300)) at a packet retransmission, leaving some
> gaps between the link's 'transmq' & 'backlogq' unexpectedly... Will we fix
> this by removing it?
That is clearly a bug that breaks the above stated limitation.
It should be sufficient to check that also l->ssthresh never exceeds
l->max_win to remedy this.

///jon

>
> @@ -1160,7 +1224,6 @@ static int tipc_link_bc_retrans(struct tipc_link *l,
> struct tipc_link *r,
>   			continue;
>   		if (more(msg_seqno(hdr), to))
>   			break;
> -
>   		if (time_before(jiffies, TIPC_SKB_CB(skb)->nxt_retr))
>   			continue;
>   		TIPC_SKB_CB(skb)->nxt_retr = TIPC_BC_RETR_LIM;
> @@ -1173,11 +1236,12 @@ static int tipc_link_bc_retrans(struct tipc_link *l,
> struct tipc_link *r,
>   		_skb->priority = TC_PRIO_CONTROL;
>   		__skb_queue_tail(xmitq, _skb);
>   		l->stats.retransmitted++;
> -
> +		retransmitted++;
>   		/* Increase actual retrans counter & mark first time */
>   		if (!TIPC_SKB_CB(skb)->retr_cnt++)
>   			TIPC_SKB_CB(skb)->retr_stamp = jiffies;
>   	}
> +	tipc_link_update_cwin(l, 0, retransmitted);             // ???
>   	return 0;
>   }
>
> +static void tipc_link_update_cwin(struct tipc_link *l, int released,
> +				  bool retransmitted)
> +{
> +	int bklog_len = skb_queue_len(&l->backlogq);
> +	struct sk_buff_head *txq = &l->transmq;
> +	int txq_len = skb_queue_len(txq);
> +	u16 cwin = l->window;
> +
> +	/* Enter fast recovery */
> +	if (unlikely(retransmitted)) {
> +		l->ssthresh = max_t(u16, l->window / 2, 300);
> +		l->window = l->ssthresh;
> +		return;
> +	}
>
> BR/Tuong
>
> -----Original Message-----
> From: Jon Maloy <jon.maloy@ericsson.com>
> Sent: Monday, December 2, 2019 7:33 AM
> To: Jon Maloy <jon.maloy@ericsson.com>; Jon Maloy <maloy@donjonn.com>
> Cc: mohan.krishna.ghanta.krishnamurthy@ericsson.com;
> parthasarathy.bhuvaragan@gmail.com; tung.q.nguyen@dektech.com.au;
> hoang.h.le@dektech.com.au; tuong.t.lien@dektech.com.au;
> gordan.mihaljevic@dektech.com.au; ying.xue@windriver.com;
> tipc-discussion@lists.sourceforge.net
> Subject: [net-next 3/3] tipc: introduce variable window congestion control
>
> We introduce a simple variable window congestion control for links.
> The algorithm is inspired by the Reno algorithm, covering both 'slow
> start', 'congestion avoidance', and 'fast recovery' modes.
>
> - We introduce hard lower and upper window limits per link, still
>    different and configurable per bearer type.
>
> - We introduce as 'slow start theshold' variable, initially set to
>    the maximum window size.
>
> - We let a link start at the minimum congestion window, i.e. in slow
>    start mode, and then let is grow rapidly (+1 per rceived ACK) until
>    it reaches the slow start threshold and enters congestion avoidance
>    mode.
>
> - In congestion avoidance mode we increment the congestion window for
>    each window_size number of acked packets, up to a possible maximum
>    equal to the configured maximum window.
>
> - For each non-duplicate NACK received, we drop back to fast recovery
>    mode, by setting the both the slow start threshold to and the
>    congestion window to (current_congestion_window / 2).
>
> - If the timeout handler finds that the transmit queue has not moved
>    timeout, it drops the link back to slow start and forces a probe
>    containing the last sent sequence number to the sent to the peer.
>
> This change does in reality have effect only on unicast ethernet
> transport, as we have seen that there is no room whatsoever for
> increasing the window max size for the UDP bearer.
> For now, we also choose to keep the limits for the broadcast link
> unchanged and equal.
>
> This algorithm seems to give a 50-100% throughput improvement for
> messages larger than MTU.
>
> Suggested-by: Xin Long <lucien.xin@gmail.com>
> Acked-by: Xin Long <lucien.xin@gmail.com>
> Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
> ---
>   net/tipc/bcast.c     |  11 ++--
>   net/tipc/bearer.c    |  11 ++--
>   net/tipc/bearer.h    |   6 +-
>   net/tipc/eth_media.c |   3 +-
>   net/tipc/ib_media.c  |   5 +-
>   net/tipc/link.c      | 175
> +++++++++++++++++++++++++++++++++++----------------
>   net/tipc/link.h      |   9 +--
>   net/tipc/node.c      |  16 ++---
>   net/tipc/udp_media.c |   3 +-
>   9 files changed, 160 insertions(+), 79 deletions(-)
>
>
>
>
>
>
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
>




_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
