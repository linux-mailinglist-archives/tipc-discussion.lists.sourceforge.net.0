Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7707EE7A62
	for <lists+tipc-discussion@lfdr.de>; Mon, 28 Oct 2019 21:43:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iPBqz-0005ul-CF; Mon, 28 Oct 2019 20:43:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1iPBqy-0005uS-EU
 for tipc-discussion@lists.sourceforge.net; Mon, 28 Oct 2019 20:43:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HynT7P13w8iBqMBpivIt4cnvrqkzt0SCDg1HL5Wemjk=; b=QZnS8KdAu9h9bil/PdMj4KPLYb
 UQZXcbLT2IWAPpAoVPD+NC4GlJ9BrV3F7H+T7aQzW2F/AMAALUL4+KISjlNScXVZCKRU6pZ3tUUiu
 w8yH+ZizUB78AVNPRtP7LQIygeZR6HSxluUUPeQEq0Ser04J6IiYyDcZSQ6YCZXG9BYI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HynT7P13w8iBqMBpivIt4cnvrqkzt0SCDg1HL5Wemjk=; b=K9l3brPc1goN9pbuTU8KQRdK3r
 8sxvgK73ToyDrnJyQBI+xHB/pwvdWs1OuVRLa8dRQUmUHua7eKcPqZGad7Q1HX6G5i3AdHJkwCiZK
 iiyTFZL9mvPE/7oVphWbAyrDxt3+MeySlQcB1gtHCRsrfjIvo3zktzHOnOK0kwpUwrYw=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iPBqx-007B6D-6n
 for tipc-discussion@lists.sourceforge.net; Mon, 28 Oct 2019 20:43:04 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 9B95314B79F7A;
 Mon, 28 Oct 2019 13:42:52 -0700 (PDT)
Date: Mon, 28 Oct 2019 13:42:52 -0700 (PDT)
Message-Id: <20191028.134252.1557886845237868126.davem@davemloft.net>
To: geert+renesas@glider.be
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191024153043.30982-1-geert+renesas@glider.be>
References: <20191024153043.30982-1-geert+renesas@glider.be>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 28 Oct 2019 13:42:52 -0700 (PDT)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iPBqx-007B6D-6n
Subject: Re: [tipc-discussion] [PATCH trivial] tipc: Spelling
 s/enpoint/endpoint/
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
Cc: trivial@kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Geert Uytterhoeven <geert+renesas@glider.be>
Date: Thu, 24 Oct 2019 17:30:43 +0200

> Fix misspelling of "endpoint".
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Applied to net-next.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
