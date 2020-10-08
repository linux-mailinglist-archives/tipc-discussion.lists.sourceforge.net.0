Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 997AB287B53
	for <lists+tipc-discussion@lfdr.de>; Thu,  8 Oct 2020 20:01:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kQaE0-0005tQ-CP; Thu, 08 Oct 2020 18:01:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kQaDz-0005tF-Mx
 for tipc-discussion@lists.sourceforge.net; Thu, 08 Oct 2020 18:01:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bjHPKGOfVh6sifK4tgf5EgBctNrQVGMRGH/KZfEsLJA=; b=CbM8fy/Fzuy9ZRe1Y0CG9wr4p4
 psKSfQ88ImRY1VtotCfNs+kr6N7bMCGl5cXah4LlmNLIBr1mKmIJ7Ny56wrzMexSDFXZ+YXj6WkpU
 uYBiI9qaj/s7jvz2wbBHE+CSxQfkCXnsHht9SbplhCpt4MZH5Y+LIazG6h5XRVOAlz/s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bjHPKGOfVh6sifK4tgf5EgBctNrQVGMRGH/KZfEsLJA=; b=nS1PxvH53fHuTRyhjLiI/3Zdol
 bOqGZ8l2xhhS7dNpOoLHOjRsQSjFblrnXtOWUEqpgO0ktmRMOIz2WAGK/Dbrb1SRFolCF8tNN09UB
 UA1OLOYthXJmh5vL+wgfg7CbdNsyWwkVpqmV3NlWUlfGYhIa8eH5UmvFPNw8w5OcSp4E=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kQaDj-007T6R-KV
 for tipc-discussion@lists.sourceforge.net; Thu, 08 Oct 2020 18:01:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1602180044;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bjHPKGOfVh6sifK4tgf5EgBctNrQVGMRGH/KZfEsLJA=;
 b=S3Qco1uecGH/RZ8YnXIWxxbjG6G15r1WgVIl9UMEI3wcvn7jxuSmapdAw9SJ2xcXronlOp
 wkgtRMWLTvarUFVi3Kl7YxCzNjMB9hh78934l1rGRbgElwyDbScAnO3YkgikrgBWDhdCLw
 6pCTxFePkzYOBSUGzvD8gZTnfV2kh2o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-558-S2I1I93WPjuEI9ps1H7Yvw-1; Thu, 08 Oct 2020 14:00:42 -0400
X-MC-Unique: S2I1I93WPjuEI9ps1H7Yvw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 62307101FFA2;
 Thu,  8 Oct 2020 18:00:41 +0000 (UTC)
Received: from [10.10.116.249] (ovpn-116-249.rdu2.redhat.com [10.10.116.249])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 62D2060CD1;
 Thu,  8 Oct 2020 18:00:40 +0000 (UTC)
To: Jakub Kicinski <kuba@kernel.org>, Hoang Huu Le <hoang.h.le@dektech.com.au>
References: <20201008073156.116136-1-hoang.h.le@dektech.com.au>
 <20201008102514.1184c315@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <54320213-5b9b-4648-fa6b-553d2acb298e@redhat.com>
Date: Thu, 8 Oct 2020 14:00:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201008102514.1184c315@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
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
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kQaDj-007T6R-KV
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
Cc: tipc-discussion@lists.sourceforge.net, netdev@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 10/8/20 1:25 PM, Jakub Kicinski wrote:
> On Thu,  8 Oct 2020 14:31:56 +0700 Hoang Huu Le wrote:
>> diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
>> index 2f9c148f17e2..fe4edce459ad 100644
>> --- a/net/tipc/name_distr.c
>> +++ b/net/tipc/name_distr.c
>> @@ -327,8 +327,13 @@ static struct sk_buff *tipc_named_dequeue(struct sk_buff_head *namedq,
>>   	struct tipc_msg *hdr;
>>   	u16 seqno;
>>   
>> +	spin_lock_bh(&namedq->lock);
>>   	skb_queue_walk_safe(namedq, skb, tmp) {
>> -		skb_linearize(skb);
>> +		if (unlikely(skb_linearize(skb))) {
>> +			__skb_unlink(skb, namedq);
>> +			kfree_skb(skb);
>> +			continue;
>> +		}
>>   		hdr = buf_msg(skb);
>>   		seqno = msg_named_seqno(hdr);
>>   		if (msg_is_last_bulk(hdr)) {
>> @@ -338,12 +343,14 @@ static struct sk_buff *tipc_named_dequeue(struct sk_buff_head *namedq,
>>   
>>   		if (msg_is_bulk(hdr) || msg_is_legacy(hdr)) {
>>   			__skb_unlink(skb, namedq);
>> +			spin_unlock_bh(&namedq->lock);
>>   			return skb;
>>   		}
>>   
>>   		if (*open && (*rcv_nxt == seqno)) {
>>   			(*rcv_nxt)++;
>>   			__skb_unlink(skb, namedq);
>> +			spin_unlock_bh(&namedq->lock);
>>   			return skb;
>>   		}
>>   
>> @@ -353,6 +360,7 @@ static struct sk_buff *tipc_named_dequeue(struct sk_buff_head *namedq,
>>   			continue;
>>   		}
>>   	}
>> +	spin_unlock_bh(&namedq->lock);
>>   	return NULL;
>>   }
>>   
>> diff --git a/net/tipc/node.c b/net/tipc/node.c
>> index cf4b239fc569..d269ebe382e1 100644
>> --- a/net/tipc/node.c
>> +++ b/net/tipc/node.c
>> @@ -1496,7 +1496,7 @@ static void node_lost_contact(struct tipc_node *n,
>>   
>>   	/* Clean up broadcast state */
>>   	tipc_bcast_remove_peer(n->net, n->bc_entry.link);
>> -	__skb_queue_purge(&n->bc_entry.namedq);
>> +	skb_queue_purge(&n->bc_entry.namedq);
> Patch looks fine, but I'm not sure why not hold
> spin_unlock_bh(&tn->nametbl_lock) here instead?
>
> Seems like node_lost_contact() should be relatively rare,
> so adding another lock to tipc_named_dequeue() is not the
> right trade off.
Actually, I agree with previous speaker here. We already have the 
nametbl_lock when tipc_named_dequeue() is called, and the same lock is 
accessible from no.c where node_lost_contact() is executed. The patch 
and the code becomes simpler.
I suggest you post a v2 of this one.

///jon

>>   	/* Abort any ongoing link failover */
>>   	for (i = 0; i < MAX_BEARERS; i++) {



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
