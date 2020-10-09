Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8264528892D
	for <lists+tipc-discussion@lfdr.de>; Fri,  9 Oct 2020 14:48:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kQrop-00067Y-7T; Fri, 09 Oct 2020 12:48:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kQron-000677-1c
 for tipc-discussion@lists.sourceforge.net; Fri, 09 Oct 2020 12:48:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YrWAUcIR2z0RjFQce9q0hB+1C0e5vjnATMHr6X69LE8=; b=AtMWOL2wLzIc5fjoNE7h2MuA5R
 id/dPIJSQ6lMgjU28twvW9k1lTNg/248o3jvm9I+C9uPdcP1YwceNETNOaQ33kbbAyukd/JfcqLVZ
 y2CGVzhiKwXaBql0IhyFuihd69hYOlY86nY+rTe2rlpPongyAG0NkjOWdSULYdEFsSBg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YrWAUcIR2z0RjFQce9q0hB+1C0e5vjnATMHr6X69LE8=; b=C7btZ5qoDjnuktAZedtUZmS+On
 WDInMd5LonLi2xdmihfepBVzO8IofSvmr95a/Siz2AYGmFSXOytp2R04FdfKRc7szQfhEc6YCRnQH
 /AMsoKkkcJAnlk9xbsJNTgNJCPZIbQ0qlfIeY1UhPrEIxiF2MjUkzm0q96AXQPUaCfvE=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kQrob-004Efq-GV
 for tipc-discussion@lists.sourceforge.net; Fri, 09 Oct 2020 12:48:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1602247675;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YrWAUcIR2z0RjFQce9q0hB+1C0e5vjnATMHr6X69LE8=;
 b=KehFK0/R0e9JnYWkPRlobEccaWPr6fl8IQ3OZeekafZB2NleQRwSSp4UuWIv/Z6fOT4i/C
 Q650oiuuY+/EIAVKDck19Q019b9aC0Dsd6RF+Gx4Qnbtnko3sIpdH5Nla/kGMgcE7rUXde
 aHgFlLi/LEFDpWJ6JzudexgJbEtOd4I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-400-wMjFx77SPV2c9cMOYk_YPQ-1; Fri, 09 Oct 2020 08:47:53 -0400
X-MC-Unique: wMjFx77SPV2c9cMOYk_YPQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7CE56802B46;
 Fri,  9 Oct 2020 12:47:52 +0000 (UTC)
Received: from [10.10.116.249] (ovpn-116-249.rdu2.redhat.com [10.10.116.249])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 812C65576D;
 Fri,  9 Oct 2020 12:47:51 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, Jakub Kicinski <kuba@kernel.org>
References: <20201008073156.116136-1-hoang.h.le@dektech.com.au>
 <20201008102514.1184c315@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <54320213-5b9b-4648-fa6b-553d2acb298e@redhat.com>
 <VI1PR05MB46058487F5FE43F6ED539355F1080@VI1PR05MB4605.eurprd05.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <c2a9e820-c972-1978-a0b7-e2483fbbca1c@redhat.com>
Date: Fri, 9 Oct 2020 08:47:51 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <VI1PR05MB46058487F5FE43F6ED539355F1080@VI1PR05MB4605.eurprd05.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kQrob-004Efq-GV
Subject: Re: [tipc-discussion] [net] tipc: fix NULL pointer dereference in
 tipc_named_rcv
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 10/9/20 12:12 AM, Hoang Huu Le wrote:
> Hi Jon,  Jakub,
>
> I tried with your comment. But looks like we got into circular locking and deadlock could happen like this:
>          CPU0                    CPU1
>          ----                    ----
>     lock(&n->lock#2);
>                                  lock(&tn->nametbl_lock);
>                                  lock(&n->lock#2);
>     lock(&tn->nametbl_lock);
>
>    *** DEADLOCK ***
>
> Regards,
> Hoang
Ok. So although your solution is not optimal, we know it is safe.
Again:
Acked-by: Jon Maloy <jmaloy@redhat.com>
>> -----Original Message-----
>> From: Jon Maloy <jmaloy@redhat.com>
>> Sent: Friday, October 9, 2020 1:01 AM
>> To: Jakub Kicinski <kuba@kernel.org>; Hoang Huu Le <hoang.h.le@dektech.com.au>
>> Cc: maloy@donjonn.com; ying.xue@windriver.com; tipc-discussion@lists.sourceforge.net; netdev@vger.kernel.org
>> Subject: Re: [net] tipc: fix NULL pointer dereference in tipc_named_rcv
>>
>>
>>
>> On 10/8/20 1:25 PM, Jakub Kicinski wrote:
>>> On Thu,  8 Oct 2020 14:31:56 +0700 Hoang Huu Le wrote:
>>>> diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
>>>> index 2f9c148f17e2..fe4edce459ad 100644
>>>> --- a/net/tipc/name_distr.c
>>>> +++ b/net/tipc/name_distr.c
>>>> @@ -327,8 +327,13 @@ static struct sk_buff *tipc_named_dequeue(struct sk_buff_head *namedq,
>>>>    	struct tipc_msg *hdr;
>>>>    	u16 seqno;
>>>>
>>>> +	spin_lock_bh(&namedq->lock);
>>>>    	skb_queue_walk_safe(namedq, skb, tmp) {
>>>> -		skb_linearize(skb);
>>>> +		if (unlikely(skb_linearize(skb))) {
>>>> +			__skb_unlink(skb, namedq);
>>>> +			kfree_skb(skb);
>>>> +			continue;
>>>> +		}
>>>>    		hdr = buf_msg(skb);
>>>>    		seqno = msg_named_seqno(hdr);
>>>>    		if (msg_is_last_bulk(hdr)) {
>>>> @@ -338,12 +343,14 @@ static struct sk_buff *tipc_named_dequeue(struct sk_buff_head *namedq,
>>>>
>>>>    		if (msg_is_bulk(hdr) || msg_is_legacy(hdr)) {
>>>>    			__skb_unlink(skb, namedq);
>>>> +			spin_unlock_bh(&namedq->lock);
>>>>    			return skb;
>>>>    		}
>>>>
>>>>    		if (*open && (*rcv_nxt == seqno)) {
>>>>    			(*rcv_nxt)++;
>>>>    			__skb_unlink(skb, namedq);
>>>> +			spin_unlock_bh(&namedq->lock);
>>>>    			return skb;
>>>>    		}
>>>>
>>>> @@ -353,6 +360,7 @@ static struct sk_buff *tipc_named_dequeue(struct sk_buff_head *namedq,
>>>>    			continue;
>>>>    		}
>>>>    	}
>>>> +	spin_unlock_bh(&namedq->lock);
>>>>    	return NULL;
>>>>    }
>>>>
>>>> diff --git a/net/tipc/node.c b/net/tipc/node.c
>>>> index cf4b239fc569..d269ebe382e1 100644
>>>> --- a/net/tipc/node.c
>>>> +++ b/net/tipc/node.c
>>>> @@ -1496,7 +1496,7 @@ static void node_lost_contact(struct tipc_node *n,
>>>>
>>>>    	/* Clean up broadcast state */
>>>>    	tipc_bcast_remove_peer(n->net, n->bc_entry.link);
>>>> -	__skb_queue_purge(&n->bc_entry.namedq);
>>>> +	skb_queue_purge(&n->bc_entry.namedq);
>>> Patch looks fine, but I'm not sure why not hold
>>> spin_unlock_bh(&tn->nametbl_lock) here instead?
>>>
>>> Seems like node_lost_contact() should be relatively rare,
>>> so adding another lock to tipc_named_dequeue() is not the
>>> right trade off.
>> Actually, I agree with previous speaker here. We already have the
>> nametbl_lock when tipc_named_dequeue() is called, and the same lock is
>> accessible from no.c where node_lost_contact() is executed. The patch
>> and the code becomes simpler.
>> I suggest you post a v2 of this one.
>>
>> ///jon
>>
>>>>    	/* Abort any ongoing link failover */
>>>>    	for (i = 0; i < MAX_BEARERS; i++) {



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
