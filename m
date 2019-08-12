Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F6A8A23A
	for <lists+tipc-discussion@lfdr.de>; Mon, 12 Aug 2019 17:25:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hxCCh-0005dP-Ow; Mon, 12 Aug 2019 15:25:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hxCCg-0005dI-No
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Aug 2019 15:25:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4MgrRR64UDGNwE3ReVczRB5FBQoc7KdWoLc281np5Cc=; b=JEp64ODO2OiOhqRgrDtzs5fIZy
 ciRm3PBhQB2On8Zz6k2X3WA0Lu2kO6zqqlZYEXJK43AHiXtozRtwe/MC3Hvn9vw+sKS976MFYyTc0
 SJFaSTEkFZ2KGrlfk/Ov0FKl2ncZ31PVDxWQzFkwDn/UMvxTNsLvq/RCg8ec3IbIz9ZE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4MgrRR64UDGNwE3ReVczRB5FBQoc7KdWoLc281np5Cc=; b=LItNPV/XV3IoF4Xqp7zVeM7vuK
 0Wmt95Lq34tJqXuEoRkuxY4pvOn1HW1F59H9nUUSoqCRmBe+rDcUa8spTLdEjKCBOY3QaT6L2rO0C
 bQi90DwlqS2qIH4h/AAbl25mUrXgLbO4/Apdhbd+skrFJdWg2dbp+chITG2VeWHMiVHs=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hxCCf-002nv5-8Y
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Aug 2019 15:25:46 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4EABF154480AB;
 Mon, 12 Aug 2019 08:25:36 -0700 (PDT)
Date: Mon, 12 Aug 2019 08:25:31 -0700 (PDT)
Message-Id: <20190812.082531.1505685049405253771.davem@davemloft.net>
To: ying.xue@windriver.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <1565595162-1383-1-git-send-email-ying.xue@windriver.com>
References: <1565595162-1383-1-git-send-email-ying.xue@windriver.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 12 Aug 2019 08:25:36 -0700 (PDT)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hxCCf-002nv5-8Y
Subject: Re: [tipc-discussion] [PATCH v2 0/3] Fix three issues found by
 syzbot
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
Cc: hdanton@sina.com, jakub.kicinski@netronome.com, netdev@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Ying Xue <ying.xue@windriver.com>
Date: Mon, 12 Aug 2019 15:32:39 +0800

> Ying Xue (3):
>   tipc: fix memory leak issue
>   tipc: fix memory leak issue

Please make the subject lines for these two patches unique.  Perhaps
mention what part of the tipc code has the memory leak you are fixing.

Thanks.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
