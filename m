Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD2F1C4317
	for <lists+tipc-discussion@lfdr.de>; Mon,  4 May 2020 19:41:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jVf67-0000sX-HD; Mon, 04 May 2020 17:41:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1jVf64-0000sP-UZ
 for tipc-discussion@lists.sourceforge.net; Mon, 04 May 2020 17:41:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vb7iInHIV6T+9XL3dCnCs/E92ol9+7OLBugYRixVfbE=; b=L9hkgC65crDYOzSEn4mcHnaE+g
 uobSuwu6OomiBQcrr4T/KgEufAHDE3b/jClYxy4YPEnQztsDTgV2dUjDWNFAbuC4fx+Uq7n/h9PmZ
 V8UgJx2XZFn1eXDQDFsc0i79cgZLwejFaqzUKtXkV587iSiJdALoqDBEcLwkkcZiTHDs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Vb7iInHIV6T+9XL3dCnCs/E92ol9+7OLBugYRixVfbE=; b=hgufcYnU2srILgnAM09exLffKw
 L/QUs3SVJDQJl/gq1lwBmvoY+sR52LG2wUq5JcfbY2vzbnzeUZ1k6Jssror+Na4hq4hXijOnbmsOl
 fBvoYsAHTw8ZMF+bFiDNCi8lNLyJQOtG00uSp/oWQXrbd6xyHVcJQJeTGzifbsg95l7c=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jVf63-007Cee-IR
 for tipc-discussion@lists.sourceforge.net; Mon, 04 May 2020 17:41:40 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id EDA59119534F6;
 Mon,  4 May 2020 10:32:04 -0700 (PDT)
Date: Mon, 04 May 2020 10:32:04 -0700 (PDT)
Message-Id: <20200504.103204.2161530815623718852.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200504041554.3703-1-tuong.t.lien@dektech.com.au>
References: <20200504041554.3703-1-tuong.t.lien@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 04 May 2020 10:32:05 -0700 (PDT)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVf63-007Cee-IR
Subject: Re: [tipc-discussion] [net] tipc: fix partial topology connection
 closure
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
Date: Mon,  4 May 2020 11:15:54 +0700

> When an application connects to the TIPC topology server and subscribes
> to some services, a new connection is created along with some objects -
> 'tipc_subscription' to store related data correspondingly...
> However, there is one omission in the connection handling that when the
> connection or application is orderly shutdown (e.g. via SIGQUIT, etc.),
> the connection is not closed in kernel, the 'tipc_subscription' objects
> are not freed too.
> This results in:
> - The maximum number of subscriptions (65535) will be reached soon, new
> subscriptions will be rejected;
> - TIPC module cannot be removed (unless the objects  are somehow forced
> to release first);
> 
> The commit fixes the issue by closing the connection if the 'recvmsg()'
> returns '0' i.e. when the peer is shutdown gracefully. It also includes
> the other unexpected cases.
> 
> Acked-by: Jon Maloy <jmaloy@redhat.com>
> Acked-by: Ying Xue <ying.xue@windriver.com>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

Applied, thanks.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
