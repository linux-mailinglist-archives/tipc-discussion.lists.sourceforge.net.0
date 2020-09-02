Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E5A25B4BF
	for <lists+tipc-discussion@lfdr.de>; Wed,  2 Sep 2020 21:49:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kDYlE-0000Bc-QR; Wed, 02 Sep 2020 19:49:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1kDYlD-0000BO-D5
 for tipc-discussion@lists.sourceforge.net; Wed, 02 Sep 2020 19:49:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g/dtBr+D+bMvUfkd2Dc+IYWzUA1CXgax9r5H0MAxKdQ=; b=mGLK1eq0hp9vepZGvp78swv0E1
 HZH1G7it2SLCursFgF47MPWSyw4r8Z8WzPNXuUwu/6lyzRdD56pYFLXYmJFntKTSS+j5Zrew6lKFM
 VRFM+bcroQwM0ZlNxq4aHATTCQOCbph7tBnwXTIr7bnxunr+jej60mb3wYprCxx+mnsk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g/dtBr+D+bMvUfkd2Dc+IYWzUA1CXgax9r5H0MAxKdQ=; b=JOqUXAOqLfEhE94a3MX3aY/odj
 FZ8LrL2pQMpNwkNkO6bPtl/3BLu0xp0vHTABnjgTMSDRY2arD6ivfjrSRpNZB84vSpL7azNlwrLif
 Uil4J2l6siwPaB1oidmGG1VQ4ZS3D9mYYwzhF+xVLxCWAL9jmLgqNFFEUvZITp3luSO0=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kDYl5-009ZOa-Kw
 for tipc-discussion@lists.sourceforge.net; Wed, 02 Sep 2020 19:49:35 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 70B3515633BF3;
 Wed,  2 Sep 2020 12:32:23 -0700 (PDT)
Date: Wed, 02 Sep 2020 12:49:06 -0700 (PDT)
Message-Id: <20200902.124906.595244784602872122.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <AM8PR05MB7332A71A7237D3BB3AB29A25E22F0@AM8PR05MB7332.eurprd05.prod.outlook.com>
References: <20200831083817.3611-2-tuong.t.lien@dektech.com.au>
 <20200901.151028.670408362469941141.davem@davemloft.net>
 <AM8PR05MB7332A71A7237D3BB3AB29A25E22F0@AM8PR05MB7332.eurprd05.prod.outlook.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Wed, 02 Sep 2020 12:32:23 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kDYl5-009ZOa-Kw
Subject: Re: [tipc-discussion] [net-next v2 1/4] tipc: optimize key
 switching time and logic
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

From: Tuong Tong Lien <tuong.t.lien@dektech.com.au>
Date: Wed, 2 Sep 2020 06:16:44 +0000

> Yes, the netlink extack message is fine but the fact is that we
> currently do not obtain such message from the user space tool
> (i.e. iproute2/tipc). So, if really needed, we will have to update
> the tool as well... For now, I will remove all the message logs as
> it is fine enough with the return code.

Please convert the messages to extack as I requested from you.

Until then, you'll have no incentive to fix the tool.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
