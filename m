Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0625C1EC4D4
	for <lists+tipc-discussion@lfdr.de>; Wed,  3 Jun 2020 00:17:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jgFDM-0001Eo-AQ; Tue, 02 Jun 2020 22:16:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1jgFDK-0001EY-RX
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Jun 2020 22:16:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MQ72pCnbkd5TZzAHCxPV7eXn3s+lq0WuA+VWsFONEVs=; b=cJdHPWcUO2wqMXyfgOX9RjqkJS
 4jvXnhsII0/9MVsJc0yHtxWrUunoR6WhbQV9gMSOvB1pxb91TmaAuJTkr2pxEmaLohn6nXS9cM9/K
 be46h0VQ4R2RpHZzVDxO4zii86maqkIT9SBOLVaqlDGD54nRtns/weH/eyOu31M/05mg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MQ72pCnbkd5TZzAHCxPV7eXn3s+lq0WuA+VWsFONEVs=; b=kXPvIo+ATpdCoWUq0fjKioun93
 I3rSTDciwzmjkf5qOFCpABBAOEcNaCtQbUGVdLCI1S+T6VFVplFAM/80o24PK/LI583BRTlte6tbr
 zRAdcl15GJ0hhwLNQPcttsc9n7DQ4X8G33PLyT3P2P+8RZGPPaZ7sFg1m9A6ll+v0FDU=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jgFDG-0039bK-Uy
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Jun 2020 22:16:54 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477:9e51:a893:b0fe:602a])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 1ED2E1277B97C;
 Tue,  2 Jun 2020 15:16:34 -0700 (PDT)
Date: Tue, 02 Jun 2020 15:16:30 -0700 (PDT)
Message-Id: <20200602.151630.1855672322670645363.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200602044641.10535-1-tuong.t.lien@dektech.com.au>
References: <20200602044641.10535-1-tuong.t.lien@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 02 Jun 2020 15:16:34 -0700 (PDT)
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jgFDG-0039bK-Uy
Subject: Re: [tipc-discussion] [net 0/2] tipc: revert two patches
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
Date: Tue,  2 Jun 2020 11:46:39 +0700

> We revert two patches:
> 
> tipc: Fix potential tipc_node refcnt leak in tipc_rcv
> tipc: Fix potential tipc_aead refcnt leak in tipc_crypto_rcv
> 
> which prevented TIPC encryption from working properly and caused kernel
> panic.

Series applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
