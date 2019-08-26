Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 673089CE59
	for <lists+tipc-discussion@lfdr.de>; Mon, 26 Aug 2019 13:44:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1i2DQ1-0005L4-W5; Mon, 26 Aug 2019 11:44:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1i2DQ1-0005Ks-CI
 for tipc-discussion@lists.sourceforge.net; Mon, 26 Aug 2019 11:44:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ikfTZ/cpnEyTeYU0DSYo3cd2Rv8HgDigu/S4fQmgE00=; b=UV14g37xdqK0qp53PDctYJcs+y
 ypAoUV1vSnT02B0fxuZkV+0jw51HXMkklqplwzicPsktk4NukmMbRUB04PA1m64shtQIggLnGYaQM
 hA8FKXRrKHTcPWTuq0HkXzDTilhrJh+ExbO3oC90l6kLz3rcZZ4vw1f0ynbcrasUOqA4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ikfTZ/cpnEyTeYU0DSYo3cd2Rv8HgDigu/S4fQmgE00=; b=BCwqDUkDkCAE51w5B379SNMPYo
 uPGoh5B9vYcpL3Q6/9F6AcdkYoNL+O4P8owOmUvBaFJSGnf8Alxf0EnzxHuDkEP4pM7r3uDze/f4W
 31DuCCkF1EaFzlRTQc5XrdCXnPteWEsKz894rpDwv9gPn1dULaSGuxKBVsciZFXqd2bA=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i2DPy-00GHII-I8
 for tipc-discussion@lists.sourceforge.net; Mon, 26 Aug 2019 11:44:17 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id D31A849173;
 Mon, 26 Aug 2019 21:44:07 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1566819847; bh=SA7eDgA7Qrk4Ax
 KRNIeRaNNsFBYBws5XPIhRTJmzCSg=; b=ekS/Sh4kU8M8m5BEE1ZnBPvlPnTq5i
 A2qtaYj8j7YDqy9+y5p6RmRJ0BwIvHAotMV2DDWC3bEBqFNmdhuYsHcB92qLSydb
 468nCsKaCX1s8q3/tVG3kMQVxtyL5EcxlSSGIM0nTRb75Fv37ySxbv6Bgw69STOo
 +43MXH5jsfb+I=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 9y4hoZMVtOsx; Mon, 26 Aug 2019 21:44:07 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 348BF4924C;
 Mon, 26 Aug 2019 21:44:07 +1000 (AEST)
Received: from VNLAP288VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 52BA549173;
 Mon, 26 Aug 2019 21:44:04 +1000 (AEST)
From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
To: "'Jon Maloy'" <jon.maloy@ericsson.com>, "'Jon Maloy'" <maloy@donjonn.com>
References: <1566656332-17161-1-git-send-email-jon.maloy@ericsson.com>
 <CH2PR15MB35753A5BEDDB5B76488936619AA70@CH2PR15MB3575.namprd15.prod.outlook.com>
In-Reply-To: <CH2PR15MB35753A5BEDDB5B76488936619AA70@CH2PR15MB3575.namprd15.prod.outlook.com>
Date: Mon, 26 Aug 2019 18:44:01 +0700
Message-ID: <082c01d55c03$90eff580$b2cfe080$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHtBQm8KxwmyRanfw1rHuWN4a32tAEJKhQTptWznVA=
Content-Language: en-us
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
X-Headers-End: 1i2DPy-00GHII-I8
Subject: Re: [tipc-discussion] [net-next 1/1] tipc: reduce risk of wakeup
 queue starvation
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
Cc: tipc-discussion@lists.sourceforge.net, 'Mohan Krishna Ghanta Krishnamurthy'
 <mohan.krishna.ghanta.krishnamurthy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Jon,

Yes, you are right, my previous patch was not complete (sorry, I have not
verified it but just wanted to give a general idea...). Actually, we could
still preserve the necessary data/header of the original message for
building the wakeup message later as needed (look, just the message 'dport'
is enough). However, I don't really like this approach because there is
still an issue there (see below).

Your patch can fix the bug I mentioned earlier (i.e. unlimited bundles of
small messages...), but looks like it has a side-effect. We may again
encounter the starvation issue that we have tried to overcome by the
previous patches, that is, a socket user with a certain importance level
messages can make the others starved, in this case it's the 'CRITICAL'
level? With the additional condition at the link_xmit(), we will limit the
other level users (i.e. report link congestion & cause them to wait...) just
due to the congestion at the 'CRITICAL' level (i.e. not their own levels) of
the backlog queue. Even, a "true" CRITICAL user that wants to send a message
will face the issue because the bundles of small messages at lower levels
occupy all the 'CRITICAL' slots...

Really, I don't understand the purpose we set the importance level of a
bundle to 'CRITICAL', which even gives more slots for the "less important"
users with small messages... Isn't it by dividing & increasing the backlog
level limits, we want to give more chances for higher level users in message
sending? I think we should improve the bundle algorithm a little bit to
reflect the backlog level usages accurately instead. I will send you another
patch...
 
BR/Tuong

-----Original Message-----
From: Jon Maloy <jon.maloy@ericsson.com> 
Sent: Saturday, August 24, 2019 9:29 PM
To: Jon Maloy <maloy@donjonn.com>
Cc: Mohan Krishna Ghanta Krishnamurthy
<mohan.krishna.ghanta.krishnamurthy@ericsson.com>;
parthasarathy.bhuvaragan@gmail.com; Tung Quang Nguyen
<tung.q.nguyen@dektech.com.au>; Hoang Huu Le <hoang.h.le@dektech.com.au>;
Tuong Tong Lien <tuong.t.lien@dektech.com.au>; Gordan Mihaljevic
<gordan.mihaljevic@dektech.com.au>; ying.xue@windriver.com;
tipc-discussion@lists.sourceforge.net
Subject: RE: [net-next 1/1] tipc: reduce risk of wakeup queue starvation

Hi Tuong,
While experimenting with byte-oriented flow control I realized that this is
a very real problem that has to be fixed.
I first tried your suggestion with putting the congestion test at the end of
tipc_link_xmit(), but realized that we need access to the original message
header when we are scheduling a user to the wakeup queue. But this header is
already gone if original the message was bundled and deleted!
Also, there is no more space in the CB area for storing the per-level
counter in the bundle packets, as was my first suggestion.

So, this was the simplest solution I could come up with. It seems to work
well, but seems to give a slight performance degradation. I am afraid we
will have to accept that for now.

Please give feedback.

///jon



> -----Original Message-----
> From: Jon Maloy <jon.maloy@ericsson.com>
> Sent: 24-Aug-19 10:19
> To: Jon Maloy <jon.maloy@ericsson.com>; Jon Maloy
> <maloy@donjonn.com>
> Cc: Mohan Krishna Ghanta Krishnamurthy
> <mohan.krishna.ghanta.krishnamurthy@ericsson.com>;
> parthasarathy.bhuvaragan@gmail.com; Tung Quang Nguyen
> <tung.q.nguyen@dektech.com.au>; Hoang Huu Le
> <hoang.h.le@dektech.com.au>; Tuong Tong Lien
> <tuong.t.lien@dektech.com.au>; Gordan Mihaljevic
> <gordan.mihaljevic@dektech.com.au>; ying.xue@windriver.com; tipc-
> discussion@lists.sourceforge.net
> Subject: [net-next 1/1] tipc: reduce risk of wakeup queue starvation
> 
> We have identified a problem with the "oversubscription" policy in the
link
> transmission code.
> 
> When small messages are transmitted, and the sending link has reached the
> transmit window limit, those messages will be bundled and put into the
link
> backlog queue. However, bundles of data messages are counted at the
> 'CRITICAL' level, so that the counter for that level, instead of the
counter for
> the real, bundled message's level is the one being increased.
> Subsequent, to-be-bundled data messagea at non-CRITICAL levels continue to
> be tested against the unchanged counter for their own level, while
> contributing to an unrestrained increase at the CRITICAL backlog level.
> 
> This leaves a gap in congestion control algorithm for small messages, and
may
> eventually lead to buffer exhaustion and link reset.
> 
> We fix this by adding a test for congestion at the CRITICAL level, as well
as the
> existing testing for the message's own level, whenever a message is
> transmitted. We also refuse to notify any waiting users as long as
congestion at
> the CRITICAL level exists.
> 
> Reported-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
> ---
>  net/tipc/link.c | 18 +++++++++++++-----
>  1 file changed, 13 insertions(+), 5 deletions(-)
> 
> diff --git a/net/tipc/link.c b/net/tipc/link.c index 6cc75ff..25a6acb
100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -77,6 +77,11 @@ struct tipc_stats {
>  	u32 msg_length_profile[7]; /* used for msg. length profiling */  };
> 
> +struct tipc_backlog {
> +	u16 len;
> +	u16 limit;
> +};
> +
>  /**
>   * struct tipc_link - TIPC link data structure
>   * @addr: network address of link's peer node @@ -157,10 +162,7 @@
> struct tipc_link {
>  	/* Sending */
>  	struct sk_buff_head transmq;
>  	struct sk_buff_head backlogq;
> -	struct {
> -		u16 len;
> -		u16 limit;
> -	} backlog[5];
> +	struct tipc_backlog backlog[5];
>  	u16 snd_nxt;
>  	u16 window;
> 
> @@ -862,6 +864,9 @@ static void link_prepare_wakeup(struct tipc_link *l)
>  	for (; imp <= TIPC_SYSTEM_IMPORTANCE; imp++)
>  		avail[imp] = l->backlog[imp].limit - l->backlog[imp].len;
> 
> +	if (avail[TIPC_CRITICAL_IMPORTANCE] <= 0)
> +		return;
> +
>  	skb_queue_walk_safe(wakeupq, skb, tmp) {
>  		imp = TIPC_SKB_CB(skb)->chain_imp;
>  		if (avail[imp] <= 0)
> @@ -949,6 +954,7 @@ int tipc_link_xmit(struct tipc_link *l, struct
> sk_buff_head *list,
>  	struct sk_buff_head *backlogq = &l->backlogq;
>  	struct sk_buff *skb, *_skb, *bskb;
>  	int pkt_cnt = skb_queue_len(list);
> +	struct tipc_backlog *bklog = l->backlog;
>  	int rc = 0;
> 
>  	if (unlikely(msg_size(hdr) > mtu)) {
> @@ -960,7 +966,9 @@ int tipc_link_xmit(struct tipc_link *l, struct
> sk_buff_head *list,
>  	}
> 
>  	/* Allow oversubscription of one data msg per source at congestion
*/
> -	if (unlikely(l->backlog[imp].len >= l->backlog[imp].limit)) {
> +	if (bklog[TIPC_CRITICAL_IMPORTANCE].len >=
> +	    bklog[TIPC_CRITICAL_IMPORTANCE].limit ||
> +	    bklog[imp].len >= bklog[imp].limit) {
>  		if (imp == TIPC_SYSTEM_IMPORTANCE) {
>  			pr_warn("%s<%s>, link overflow", link_rst_msg,
l->name);
>  			return -ENOBUFS;
> --
> 2.1.4




_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
