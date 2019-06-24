Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B4250E08
	for <lists+tipc-discussion@lfdr.de>; Mon, 24 Jun 2019 16:30:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hfPyw-0004hS-JY; Mon, 24 Jun 2019 14:30:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hfPyu-0004eN-VI
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 14:30:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zRv61DJB7sHdknIlTxZJt6XYKQgcMgKxNGwbCotTcMA=; b=bImkgoknW0SRO2DsmhAHuA+BNT
 wCoXiwFHclU070Y7PfBwfAKdbqfchsszI4SKMAh9343+Hqm3wdG0zzSxAPhAQ8fcNzcGIgksM1tjY
 kJzc48K2DHt/JrFQDWOGFKQOyjm9JHZ9AUoar+nZ4zDFC6I+ATlKU4J41dBpbol1V71s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zRv61DJB7sHdknIlTxZJt6XYKQgcMgKxNGwbCotTcMA=; b=SgawkBUITreJHRugej6ESxVXLk
 LbdjORUNHi8g8hkWVrV5J4jHU3epITSwzfZoYivwDEG+fPk0sMKTGrzpGl8W9Rl0Nm6/IGd1tjsDL
 mSB2AFyRekwiGRCy1OyVD7MgQtzKYzbaD3QhNT1lsGwl3U/sEb6ukn1k5R2ED9kjQO5c=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hfPz1-00BlJY-S1
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 14:30:13 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B89C515041427;
 Mon, 24 Jun 2019 07:30:03 -0700 (PDT)
Date: Mon, 24 Jun 2019 07:30:03 -0700 (PDT)
Message-Id: <20190624.073003.79543061561048819.davem@davemloft.net>
To: john.rutherford@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190624040123.32337-1-john.rutherford@dektech.com.au>
References: <20190624040123.32337-1-john.rutherford@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 24 Jun 2019 07:30:03 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hfPz1-00BlJY-S1
Subject: Re: [tipc-discussion] [net-next] tipc: fix missing indentation in
 source code
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
Cc: netdev@vger.kernel.org, tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: John Rutherford <john.rutherford@dektech.com.au>
Date: Mon, 24 Jun 2019 14:01:23 +1000

> Fix misalignment of policy statement in netlink.c due to automatic
> spatch code transformation.
> 
> Fixes: 3b0f31f2b8c9 ("genetlink: make policy common to family")
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>
> Signed-off-by: John Rutherford <john.rutherford@dektech.com.au>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
