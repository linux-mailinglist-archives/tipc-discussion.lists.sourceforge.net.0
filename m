Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E0467692
	for <lists+tipc-discussion@lfdr.de>; Sat, 13 Jul 2019 00:35:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hm486-0002I2-8L; Fri, 12 Jul 2019 22:35:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hm485-0002Hn-5q
 for tipc-discussion@lists.sourceforge.net; Fri, 12 Jul 2019 22:35:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xqn7Vacg+w7f0jkEpipT82tQhwndlC6sav14GJyUqSQ=; b=WAh07XpNlbtI2KWKKfBoy7mHzt
 Q7kW4zVI6GS5E3ylpxuGyvbgzTvZY32kFsvcsaxXPiQzPAQwRABmrr9NEbsZ9N8rYulWsaAvvKT/T
 ECgXukneW9qcQ0H3/lZwTH4OgSm3CuEgemwUsBwoJa3rbThORq22du+o0PDgfNxWhi1A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Xqn7Vacg+w7f0jkEpipT82tQhwndlC6sav14GJyUqSQ=; b=bDIMEC/PtzcBnBzVwh7UCHMcEi
 lZ1ttHh69VyFo2Wj1SJZHq7Ckveuu3z4KSo+dYCRIXGOp1aRUFRlThA1Arqv2Ew70h555/vvssR+8
 CvPP8XfyKLn0B34SXRpj667pVtkWWtP9duMKzZrCzQTqofUFMDRG9HcBcBkWfvmTE7vs=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hm482-00GyR8-OW
 for tipc-discussion@lists.sourceforge.net; Fri, 12 Jul 2019 22:35:01 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 0F25B14E03845;
 Fri, 12 Jul 2019 15:34:49 -0700 (PDT)
Date: Fri, 12 Jul 2019 15:34:48 -0700 (PDT)
Message-Id: <20190712.153448.2014775769142835466.davem@davemloft.net>
To: chris.packham@alliedtelesis.co.nz
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190711224115.21499-1-chris.packham@alliedtelesis.co.nz>
References: <20190711224115.21499-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 12 Jul 2019 15:34:49 -0700 (PDT)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: alliedtelesis.co.nz]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hm482-00GyR8-OW
Subject: Re: [tipc-discussion] [PATCH v2] tipc: ensure head->lock is
 initialised
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
Cc: eric.dumazet@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Chris Packham <chris.packham@alliedtelesis.co.nz>
Date: Fri, 12 Jul 2019 10:41:15 +1200

> tipc_named_node_up() creates a skb list. It passes the list to
> tipc_node_xmit() which has some code paths that can call
> skb_queue_purge() which relies on the list->lock being initialised.
> 
> The spin_lock is only needed if the messages end up on the receive path
> but when the list is created in tipc_named_node_up() we don't
> necessarily know if it is going to end up there.
> 
> Once all the skb list users are updated in tipc it will then be possible
> to update them to use the unlocked variants of the skb list functions
> and initialise the lock when we know the message will follow the receive
> path.
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
