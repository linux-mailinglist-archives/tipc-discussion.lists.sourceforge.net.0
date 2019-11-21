Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FC9105CFF
	for <lists+tipc-discussion@lfdr.de>; Fri, 22 Nov 2019 00:05:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iXvVf-0000Ma-3x; Thu, 21 Nov 2019 23:05:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1iXvVc-0000MK-1H
 for tipc-discussion@lists.sourceforge.net; Thu, 21 Nov 2019 23:05:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OmYamZwYXvwp4Wj5iysfkIvSdsaj0Vqx7ir1xHRmf3M=; b=Hm82ois/2getVAQ66xsjbbUiL3
 9bxaYKs10os+lwOWHb6snoWCnkjooOyEgBQmy2yynrBM370tEHbpD6q2h4A4m02Z9iYtzL88p6nFY
 k1V1lFB/xG5QCvCtKoNzEgHwpGbBHDZc2f/xWWCGUP3ZLdTFARICn2YqxqciQV1EgNk4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OmYamZwYXvwp4Wj5iysfkIvSdsaj0Vqx7ir1xHRmf3M=; b=dDc3QeaeibMLvVkZaozN7rsaaD
 Ap5afuClbfq5i+Ynz6y/CbvyNKZ2b2+M3+5aFlEtB/YivaP1fmidkZAbvLi7YGx6Qi/YaFMAygHLz
 dclLOxp0yJomvLc9HcPI3YNWyi1bAx5XGLuwaQF3PSbRak9HbthRRnmrkFXF5QKwD1eI=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iXvVZ-009i1G-Tr
 for tipc-discussion@lists.sourceforge.net; Thu, 21 Nov 2019 23:05:07 +0000
Received: from localhost (c-73-35-209-67.hsd1.wa.comcast.net [73.35.209.67])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 46557150AD820;
 Thu, 21 Nov 2019 15:04:56 -0800 (PST)
Date: Thu, 21 Nov 2019 15:04:55 -0800 (PST)
Message-Id: <20191121.150455.995586643384214573.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191121083458.19096-1-tuong.t.lien@dektech.com.au>
References: <20191121083458.19096-1-tuong.t.lien@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 21 Nov 2019 15:04:56 -0800 (PST)
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iXvVZ-009i1G-Tr
Subject: Re: [tipc-discussion] [net-next v3] tipc: support in-order name
 publication events
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Tuong Lien <tuong.t.lien@dektech.com.au>
Date: Thu, 21 Nov 2019 15:34:58 +0700

> It is observed that TIPC service binding order will not be kept in the
> publication event report to user if the service is subscribed after the
> bindings.
> 
> For example, services are bound by application in the following order:
> 
> Server: bound port A to {18888,66,66} scope 2
> Server: bound port A to {18888,33,33} scope 2
> 
> Now, if a client subscribes to the service range (e.g. {18888, 0-100}),
> it will get the 'TIPC_PUBLISHED' events in that binding order only when
> the subscription is started before the bindings.
> Otherwise, if started after the bindings, the events will arrive in the
> opposite order:
> 
> Client: received event for published {18888,33,33}
> Client: received event for published {18888,66,66}
> 
> For the latter case, it is clear that the bindings have existed in the
> name table already, so when reported, the events' order will follow the
> order of the rbtree binding nodes (- a node with lesser 'lower'/'upper'
> range value will be first).
> 
> This is correct as we provide the tracking on a specific service status
> (available or not), not the relationship between multiple services.
> However, some users expect to see the same order of arriving events
> irrespective of when the subscription is issued. This turns out to be
> easy to fix. We now add functionality to ensure that publication events
> always are issued in the same temporal order as the corresponding
> bindings were performed.
> 
> v2: replace the unnecessary macro - 'publication_after()' with inline
> function.
> v3: reuse 'time_after32()' instead of reinventing the same exact code.
> 
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

Applied, thanks.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
