Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 045026E0A8
	for <lists+tipc-discussion@lfdr.de>; Fri, 19 Jul 2019 07:41:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hoLdr-0006ju-L6; Fri, 19 Jul 2019 05:41:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1hoLdq-0006jn-ML
 for tipc-discussion@lists.sourceforge.net; Fri, 19 Jul 2019 05:41:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ggb3NnkLU8DtTlAaTlzOrYPITGpwBEr7RwhjxnrosFU=; b=HEfMpF7+LwC4IGHXWPpYi9ZYWq
 0p8UN8N/vb6e22dua2CHWTdSX4XQUGPY9AobjiUZIBtm3VgBiO0HuVkB6kXyHS84TNGSnWeJK50lt
 P2kKO4BhcCICABrnpMpXcdGwV8+sU8FU8CB5wCkpZ40G74NzFg/oM1mf1kGoWSP7feec=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ggb3NnkLU8DtTlAaTlzOrYPITGpwBEr7RwhjxnrosFU=; b=XkP0boZ7P9wY4NcPeGA0NlAe57
 8qklX0fULYdjHquoyS65UlwYkVUI73ZMCMjUk4Pq4WkkSsimaR3i5XwDgGOl8itCledIF4Jt0tBHx
 ewZIftdYPnpmU0qW/0GbvuDY2tkh/+vWK70tpyYNyjQ0uXdC/V3ni0fdNwOewuRyigPw=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hoLdl-006oQh-Sh
 for tipc-discussion@lists.sourceforge.net; Fri, 19 Jul 2019 05:41:14 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 31890463B9;
 Fri, 19 Jul 2019 15:41:02 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1563514862; bh=i+YIj6RTGa98Zl
 4XFJqsN3UFzY5KWVwLWTPyYFtuoG0=; b=XdIy0sL75I5Op/JjAOO+q8r0r/meum
 XHON1Su9nf1OQlUPTdusEIQ6fSQzETWGnZqNNfhwps/YGZizDMK+tRLegZxr61A+
 UDLaNdL0BNkn/TPYI6EGtOklvfUHuWw4Ly1fte2hzFadhE6H9RF1QSAG9wvbFZ0N
 92YhadVEuSOB4=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id VYzbxMUd9xiT; Fri, 19 Jul 2019 15:41:02 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 4AF36463BC;
 Fri, 19 Jul 2019 15:41:01 +1000 (AEST)
Received: from VNLAP253VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 4B1BA463B9;
 Fri, 19 Jul 2019 15:40:59 +1000 (AEST)
From: "tung quang nguyen" <tung.q.nguyen@dektech.com.au>
To: "'Jon Maloy'" <jon.maloy@ericsson.com>, "'Jon Maloy'" <maloy@donjonn.com>,
 <tipc-discussion@lists.sourceforge.net>, <ying.xue@windriver.com>
References: <1563396954-8686-1-git-send-email-jon.maloy@ericsson.com>
 <CH2PR15MB3575E1B36604EB2C6EA1FC449AC90@CH2PR15MB3575.namprd15.prod.outlook.com>
 <08ce01d53d50$02d725b0$08857110$@dektech.com.au>
 <CH2PR15MB3575E31F133FFC3F0C8745939ACB0@CH2PR15MB3575.namprd15.prod.outlook.com>
In-Reply-To: <CH2PR15MB3575E31F133FFC3F0C8745939ACB0@CH2PR15MB3575.namprd15.prod.outlook.com>
Date: Fri, 19 Jul 2019 12:40:53 +0700
Message-ID: <09d501d53df4$8a9569e0$9fc03da0$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQH0LaBEvhz6LusmUOJo3Dp9iN7yZwK38jk7AWcp8RcCvc5msKZcoHdw
Content-Language: en-us
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hoLdl-006oQh-Sh
Subject: Re: [tipc-discussion] [net 1/1] tipc: reduce risk of wakeup queue
 starvation
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

Hi Jon,

See below.

Best regards,
Tung Nguyen

-----Original Message-----
From: Jon Maloy <jon.maloy@ericsson.com> 
Sent: Friday, July 19, 2019 10:05 AM
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; 'Jon Maloy'
<maloy@donjonn.com>; tipc-discussion@lists.sourceforge.net;
ying.xue@windriver.com
Cc: Mohan Krishna Ghanta Krishnamurthy
<mohan.krishna.ghanta.krishnamurthy@ericsson.com>;
parthasarathy.bhuvaragan@gmail.com; Hoang Huu Le
<hoang.h.le@dektech.com.au>; Canh Duc Luu <canh.d.luu@dektech.com.au>; Tuong
Tong Lien <tuong.t.lien@dektech.com.au>; Gordan Mihaljevic
<gordan.mihaljevic@dektech.com.au>
Subject: RE: [net 1/1] tipc: reduce risk of wakeup queue starvation

Hi Tung,
I did of course do some measurements before sending out the patch yesterday,
but I saw no significant difference in performance between the methods.
The results were within the range of normal, stochastic variations, and
making many runs only confirmed that.
This was also what I was expecting.

I have now made a couple of changes to my patch:
1) I took into account that backlog[imp].len often is larger than
backlog[imp].limit (because of the oversubscription) when calculating the
available number of backlog queue slots, resulting in a negative avail[imp]
value.  This would have the effect that we sometimes keep submitting wakeup
jobs when there are no slots left in the backlog queue. Those jobs will be
launched, run, immediately find that we are at congestion again, and be
suspended a second time. That is, a gross waste of CPU resources. (This is a
weakness of your algorithm, too)
[Tung]: Exactly but the lists of skb are added to the link backlog queues
after this "Those jobs will be launched, run, immediately find that we are
at congestion again". That's the reason I chose to schedule all wakeup
messages right after the condition is met. All sleeping sockets will be
waken up and send their messages to link backlog queues before being put
into sleeping state again. With that, we can reduce the risk of starvation.
Your patch V2 was exactly my first patch except the prepending of wakeup
messages to the queue tail. But I thought more about above-mentioned
scenario and changed to the patch I sent to you to avoid the risk
completely.

2) After adding some statistics counters, I realized that there are
practically never any wakeup messages in the input queue when we run
prepare_wakeup(), so we can just as well skip the slightly expensive step to
count and reschedule those jobs. This may lead to that we at rare occasions
issue too many wakeup jobs, but it is  seems to be worth the cost.

3) I added the wakeup jobs to the tail of the input queue, instead of to the
head, so they will be run after regular input queue messages. I felt
slightly uncomfortable with prepending the wakeup messages, as it might lead
to surprising new behaviors.  This is in practice what you are doing, too,
since you check the wakeup queue and call tipc_sk_wakeup_rcv() after we have
checked the input queue and calles tipc_sk_rcv().   

I also re-ran my measurements with the new version, many times, and the
pattern was always the same.
[Tung]: I verified and confirm it. It is better than the first version which
showed very bad result in all my rounds of execution.
Let's wait and see if this patch could fix the issue.

Below is a sample.

No patch:
-------------

node1 ~ # bmc -t -c100
****** TIPC Benchmark Client Started ******
Transferring 64000 messages in TIPC Throughput Benchmark
+---------------------------------------------------------------------------
------------------+
|  Msg Size  | #     |  # Msgs/  |  Elapsed  |                    Throughput
|
|  [octets]  | Conns |    Conn   |  [ms]
+------------------------------------------------+
|            |       |           |           | Total [Msg/s] | Total [Mb/s]
| Per Conn [Mb/s] |
+---------------------------------------------------------------------------
------------------+
|        64  |  100  |    64000  |     5635  |      1135714  |         581
|              5  |
+---------------------------------------------------------------------------
------------------+
|       256  |  100  |    32000  |     4221  |       758006  |        1552
|             15  |
+---------------------------------------------------------------------------
------------------+
|      1024  |  100  |    16000  |     9023  |       177316  |        1452
|             14  |
+---------------------------------------------------------------------------
------------------+
|      4096  |  100  |     8000  |    10238  |        78139  |        2560
|             25  |
+---------------------------------------------------------------------------
------------------+
|     16384  |  100  |     4000  |    15651  |        25557  |        3349
|             33  |
+---------------------------------------------------------------------------
------------------+
|     65536  |  100  |     2000  |    29197  |         6849  |        3590
|             35  |
+---------------------------------------------------------------------------
------------------+
Completed Throughput Benchmark
****** TIPC Benchmark Client Finished ******
node1 ~ #

Tung's patch:
-----------------
node1 ~ # bmc -t -c100
****** TIPC Benchmark Client Started ******
Transferring 64000 messages in TIPC Throughput Benchmark
+---------------------------------------------------------------------------
------------------+
|  Msg Size  | #     |  # Msgs/  |  Elapsed  |                    Throughput
|
|  [octets]  | Conns |    Conn   |  [ms]
+------------------------------------------------+
|            |       |           |           | Total [Msg/s] | Total [Mb/s]
| Per Conn [Mb/s] |
+---------------------------------------------------------------------------
------------------+
|        64  |  100  |    64000  |     5906  |      1083527  |         554
|              5  |
+---------------------------------------------------------------------------
------------------+
|       256  |  100  |    32000  |     3510  |       911531  |        1866
|             18  |
+---------------------------------------------------------------------------
------------------+
|      1024  |  100  |    16000  |     9594  |       166755  |        1366
|             13  |
+---------------------------------------------------------------------------
------------------+
|      4096  |  100  |     8000  |     9738  |        82144  |        2691
|             26  |
+---------------------------------------------------------------------------
------------------+
|     16384  |  100  |     4000  |    15760  |        25379  |        3326
|             33  |
+---------------------------------------------------------------------------
------------------+
|     65536  |  100  |     2000  |    30615  |         6532  |        3424
|             34  |
+---------------------------------------------------------------------------
------------------+
Completed Throughput Benchmark
****** TIPC Benchmark Client Finished ******
node1 ~ #

Jon's patch, v2:
-----------------
node1 ~ # bmc -t -c100
+---------------------------------------------------------------------------
------------------+
|  Msg Size  | #     |  # Msgs/  |  Elapsed  |                    Throughput
|
|  [octets]  | Conns |    Conn   |  [ms]
+------------------------------------------------+
|            |       |           |           | Total [Msg/s] | Total [Mb/s]
| Per Conn [Mb/s] |
+---------------------------------------------------------------------------
------------------+
|        64  |  100  |    64000  |     5465  |      1171064  |         599
|              5  |
+---------------------------------------------------------------------------
------------------+
|       256  |  100  |    32000  |     3270  |       978490  |        2003
|             20  |
+---------------------------------------------------------------------------
------------------+
|      1024  |  100  |    16000  |     6987  |       228964  |        1875
|             18  |
+---------------------------------------------------------------------------
------------------+
|      4096  |  100  |     8000  |     9562  |        83657  |        2741
|             27  |
+---------------------------------------------------------------------------
------------------+
|     16384  |  100  |     4000  |    15603  |        25635  |        3360
|             33  |
+---------------------------------------------------------------------------
------------------+
|     65536  |  100  |     2000  |    28385  |         7045  |        3693
|             36  |
+---------------------------------------------------------------------------
------------------+
Completed Throughput Benchmark
****** TIPC Benchmark Client Finished ******
node1 ~ #

BR
///jon


> -----Original Message-----
> From: tung quang nguyen <tung.q.nguyen@dektech.com.au>
> Sent: 18-Jul-19 06:03
> To: Jon Maloy <jon.maloy@ericsson.com>; 'Jon Maloy'
> <maloy@donjonn.com>; tipc-discussion@lists.sourceforge.net;
> ying.xue@windriver.com
> Cc: Mohan Krishna Ghanta Krishnamurthy
> <mohan.krishna.ghanta.krishnamurthy@ericsson.com>;
> parthasarathy.bhuvaragan@gmail.com; Hoang Huu Le
> <hoang.h.le@dektech.com.au>; Canh Duc Luu
> <canh.d.luu@dektech.com.au>; Tuong Tong Lien
> <tuong.t.lien@dektech.com.au>; Gordan Mihaljevic
> <gordan.mihaljevic@dektech.com.au>
> Subject: RE: [net 1/1] tipc: reduce risk of wakeup queue starvation
> 
> Hi Jon,
> 
> You patch is too complex. There will be a lot of overheads when
> grabbing/releasing locks (3 times) and using 2 loops.
> As a result, performance of benchmark test is reduced significantly while
my
> patch shows the same performance with the original code.
> 
> This is the comparison between my patch and yours after running benchmark
> using 100 connections (Message size in bytes: x% better):
> - 64: 23.5%
> - 256: 30.2%
> - 1024: 19.5%
> - 4096: 14.9%
> - 16384: 6.7%
> - 65536: 2.4%
> 
> So, I do not think your patch would solve the issue.
> 
> Thanks.
> 
> Best regards,
> Tung Nguyen
> 
> -----Original Message-----
> From: Jon Maloy <jon.maloy@ericsson.com>
> Sent: Thursday, July 18, 2019 4:22 AM
> To: Jon Maloy <maloy@donjonn.com>
> Cc: Mohan Krishna Ghanta Krishnamurthy
> <mohan.krishna.ghanta.krishnamurthy@ericsson.com>;
> parthasarathy.bhuvaragan@gmail.com; Tung Quang Nguyen
> <tung.q.nguyen@dektech.com.au>; Hoang Huu Le
> <hoang.h.le@dektech.com.au>; Canh Duc Luu
> <canh.d.luu@dektech.com.au>; Tuong Tong Lien
> <tuong.t.lien@dektech.com.au>; Gordan Mihaljevic
> <gordan.mihaljevic@dektech.com.au>; ying.xue@windriver.com; tipc-
> discussion@lists.sourceforge.net
> Subject: RE: [net 1/1] tipc: reduce risk of wakeup queue starvation
> 
> Hi Tung,
> After thinking more about this, I realized that the problem is a little
more
> complex than I first imagined.
> We must also take into account that there may still be old wakeup messages
in
> the input queue when we are trying to add new ones. Those may be scattered
> around in the input queue because  new data messages have arrived before
> they were scheduled.
> So, we must make sure that those are still placed at the head of the input
> queue, before any new wakeup messages, which should be before any data
> messages.
> Those messages should also be counted when we calculate the available
space
> in the backlog queue, so that there is never more pending wakeup jobs than
> there are available slots in in that queue.
> So, I ended up with writing my own patch for this, I hope you don't mind.
> I tested this as far as I could, but I assume you have a more relevant
test
> program than me for this.
> 
> BR
> ///jon
> 
> 
> > -----Original Message-----
> > From: Jon Maloy
> > Sent: 17-Jul-19 16:56
> > To: Jon Maloy <jon.maloy@ericsson.com>; Jon Maloy
> <maloy@donjonn.com>
> > Cc: Mohan Krishna Ghanta Krishnamurthy
> > <mohan.krishna.ghanta.krishnamurthy@ericsson.com>;
> > parthasarathy.bhuvaragan@gmail.com; Tung Quang Nguyen
> > <tung.q.nguyen@dektech.com.au>; Hoang Huu Le
> > <hoang.h.le@dektech.com.au>; Canh Duc Luu
> <canh.d.luu@dektech.com.au>;
> > Tuong Tong Lien <tuong.t.lien@dektech.com.au>; Gordan Mihaljevic
> > <gordan.mihaljevic@dektech.com.au>; ying.xue@windriver.com; tipc-
> > discussion@lists.sourceforge.net
> > Subject: [net 1/1] tipc: reduce risk of wakeup queue starvation
> >
> > In commit 365ad353c256 ("tipc: reduce risk of user starvation during
> > link
> > congestion") we allowed senders to add exactly one list of extra
> > buffers
> to the
> > link backlog queues during link congestion (aka "oversubscription").
> However,
> > the criteria for when to stop adding wakeup messages to the input
> > queue when the overload abates is inaccurate, and may cause starvation
> > problems during very high load.
> >
> > Currently, we stop adding wakeup messages after 10 total failed
> > attempts where we find that there is no space left in the backlog
> > queue for a
> certain
> > importance level. The counter for this is accumulated across all
> > levels,
> which
> > may lead the algorithm to leave the loop prematurely, although there
> > may
> still
> > be plenty of space available at some levels.
> > The result is sometimes that messages near the wakeup queue tail are
> > not added to the input queue as they should be.
> >
> > We now introduce a more exact algorithm, where we don't stop adding
> > messages until all backlog queue levels have have saturated or there
> > are
> no
> > more wakeup messages to dequeue.
> >
> > Fixes: 365ad35 ("tipc: reduce risk of user starvation during link
> congestion")
> > Reported-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> > Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
> > ---
> >  net/tipc/link.c | 43 +++++++++++++++++++++++++++++++++++--------
> >  1 file changed, 35 insertions(+), 8 deletions(-)
> >
> > diff --git a/net/tipc/link.c b/net/tipc/link.c index 66d3a07..1f41523
> 100644
> > --- a/net/tipc/link.c
> > +++ b/net/tipc/link.c
> > @@ -853,18 +853,45 @@ static int link_schedule_user(struct tipc_link
> > *l, struct tipc_msg *hdr)
> >   */
> >  static void link_prepare_wakeup(struct tipc_link *l)  {
> > +	struct sk_buff_head *wakeupq = &l->wakeupq;
> > +	struct sk_buff_head *inputq = l->inputq;
> >  	struct sk_buff *skb, *tmp;
> > -	int imp, i = 0;
> > +	struct sk_buff_head tmpq;
> > +	int avail[5] = {0,};
> > +	int imp = 0;
> > +
> > +	__skb_queue_head_init(&tmpq);
> > +
> > +	for (; imp <= TIPC_SYSTEM_IMPORTANCE; imp++)
> > +		avail[imp] = l->backlog[imp].limit - l->backlog[imp].len;
> >
> > -	skb_queue_walk_safe(&l->wakeupq, skb, tmp) {
> > +	/* Already pending wakeup messages in inputq must come first */
> > +	spin_lock_bh(&inputq->lock);
> > +	skb_queue_walk_safe(inputq, skb, tmp) {
> > +		if (msg_user(buf_msg(skb)) != SOCK_WAKEUP)
> > +			continue;
> > +		__skb_unlink(skb, inputq);
> > +		__skb_queue_tail(&tmpq, skb);
> >  		imp = TIPC_SKB_CB(skb)->chain_imp;
> > -		if (l->backlog[imp].len < l->backlog[imp].limit) {
> > -			skb_unlink(skb, &l->wakeupq);
> > -			skb_queue_tail(l->inputq, skb);
> > -		} else if (i++ > 10) {
> > -			break;
> > -		}
> > +		if (avail[imp])
> > +			avail[imp]--;
> >  	}
> > +	spin_unlock_bh(&inputq->lock);
> > +
> > +	spin_lock_bh(&wakeupq->lock);
> > +	skb_queue_walk_safe(wakeupq, skb, tmp) {
> > +		imp = TIPC_SKB_CB(skb)->chain_imp;
> > +		if (!avail[imp])
> > +			continue;
> > +		avail[imp]--;
> > +		__skb_unlink(skb, wakeupq);
> > +		__skb_queue_tail(&tmpq, skb);
> > +	}
> > +	spin_unlock_bh(&wakeupq->lock);
> > +
> > +	spin_lock_bh(&inputq->lock);
> > +	skb_queue_splice(&tmpq, inputq);
> > +	spin_unlock_bh(&inputq->lock);
> >  }
> >
> >  void tipc_link_reset(struct tipc_link *l)
> > --
> > 2.1.4
> 




_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
