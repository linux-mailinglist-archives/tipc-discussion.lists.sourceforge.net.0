Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD08DFC3D
	for <lists+tipc-discussion@lfdr.de>; Tue, 22 Oct 2019 05:35:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iMkxB-0004RU-QB; Tue, 22 Oct 2019 03:35:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1iMkxA-0004RD-1O
 for tipc-discussion@lists.sourceforge.net; Tue, 22 Oct 2019 03:35:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s0i3eOJW2HvntPHq98xdzqA0qRAT9ZmFttMu7BfkR8w=; b=lXPxkxoOIiqtLWHh4f5plS1/SX
 w0Zhb19eSYy4cLKOgwUbU2cV+oQtyIW1EJl/tzzSjSU5fZ5OQJinWS6IvlrYxIHA3LYiHEreKbIef
 COVTzMR16hxDmMZzcLp3+6TBdQVKGxKUk3lo86gRts54N+WuW8lfIPKOax8PghNvS6+U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=s0i3eOJW2HvntPHq98xdzqA0qRAT9ZmFttMu7BfkR8w=; b=F7dbS+Kb9HIiM1sIaOn/P7YA8R
 VC9tuobj+0yB4uWYhBWYLsp4Wdb3rtX99k8uFOodRp9mLgwuEVAwhCGvR8e9zi4b4cBpMGwu/8E1w
 L3U5PuOAg13aj5yg7hi0jMXU0FZVsR0yCeIzE8QBhG609deigGVnWWg6ho6bhhwMD1zM=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iMkx5-00AxtR-Q4
 for tipc-discussion@lists.sourceforge.net; Tue, 22 Oct 2019 03:35:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 29ACD4969F;
 Tue, 22 Oct 2019 14:35:13 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1571715313; bh=nIYkkU5MLtaDCy
 NKKvznch9lUcyVDVunNRYLY/3sYnY=; b=MnN5zyQYcOnCcshrs9reAorfRTRoK4
 Ng0Ac+QHt9krcr6Tl2K9Ot+bzkGolDeD8nQy/mMt5ByijlEH9+wsg9DauzXWd7kw
 cCmImjImdPvlXz32KJSF0Y7gBlEJLJj1vnIKl7IOhytHmzg94UPfKluM1R0fziWJ
 Vk1udZtJ+lkfA=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 769LCdGsZrx9; Tue, 22 Oct 2019 14:35:13 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 0A17249D89;
 Tue, 22 Oct 2019 14:35:12 +1100 (AEDT)
Received: from VNLAP298VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id A49124969F;
 Tue, 22 Oct 2019 14:35:11 +1100 (AEDT)
From: "Hoang Le" <hoang.h.le@dektech.com.au>
To: "'Eric Dumazet'" <eric.dumazet@gmail.com>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>, <tipc-discussion@lists.sourceforge.net>,
 <netdev@vger.kernel.org>
References: <20191022022036.19961-1-hoang.h.le@dektech.com.au>
 <88e00511-ae7f-cbd3-46b1-df0f0509c04e@gmail.com>
In-Reply-To: <88e00511-ae7f-cbd3-46b1-df0f0509c04e@gmail.com>
Date: Tue, 22 Oct 2019 10:33:56 +0700
Message-ID: <004401d58889$8a3ba740$9eb2f5c0$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIBGTi9TYT/dH44O8HREmWnQKht0AJdjXoypvvwHSA=
Content-Language: en-us
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iMkx5-00AxtR-Q4
Subject: Re: [tipc-discussion] [net-next] tipc: improve throughput between
 nodes in netns
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

Hi Eric,

Thanks for quick feedback.
See my inline answer.

Regards,
Hoang
-----Original Message-----
From: Eric Dumazet <eric.dumazet@gmail.com> 
Sent: Tuesday, October 22, 2019 9:41 AM
To: Hoang Le <hoang.h.le@dektech.com.au>; jon.maloy@ericsson.com; maloy@donjonn.com; tipc-discussion@lists.sourceforge.net; netdev@vger.kernel.org
Subject: Re: [net-next] tipc: improve throughput between nodes in netns


On 10/21/19 7:20 PM, Hoang Le wrote:
>  	n->net = net;
>  	n->capabilities = capabilities;
> +	n->pnet = NULL;
> +	for_each_net_rcu(tmp) {

This does not scale well, if say you have a thousand netns ?
[Hoang] This check execs only once at setup step. So we get no problem with huge namespaces.

> +		tn_peer = net_generic(tmp, tipc_net_id);
> +		if (!tn_peer)
> +			continue;
> +		/* Integrity checking whether node exists in namespace or not */
> +		if (tn_peer->net_id != tn->net_id)
> +			continue;
> +		if (memcmp(peer_id, tn_peer->node_id, NODE_ID_LEN))
> +			continue;
> +
> +		hash_chk = tn_peer->random;
> +		hash_chk ^= net_hash_mix(&init_net);

Why the xor with net_hash_mix(&init_net) is needed ?
[Hoang] We're trying to eliminate a sniff at injectable discovery message. 
Building hash-mixes as much as possible is to prevent fake discovery messages.

> +		hash_chk ^= net_hash_mix(tmp);
> +		if (hash_chk ^ hash_mixes)
> +			continue;
> +		n->pnet = tmp;
> +		break;
> +	}


How can we set n->pnet without increasing netns ->count ?
Using check_net() later might trigger an use-after-free.

[Hoang] In this case, peer node is down. I assume the tipc xmit function already bypassed these lines.



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
