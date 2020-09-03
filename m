Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD2325C91E
	for <lists+tipc-discussion@lfdr.de>; Thu,  3 Sep 2020 21:11:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kDue2-0004OY-8k; Thu, 03 Sep 2020 19:11:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1kDudz-0004OM-Vc
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Sep 2020 19:11:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xRumOHpdhjBzG+hcKs5QEmP7f8MoN1eTVZymP9CF6HQ=; b=WOIpIc2j5Op1hM7AIB3WNAlKEJ
 sI2mJCgpkDRCQtNGs+J/8ceWnpJ9+QDJOAxq9yvBZMbpGiWu5Ttqkl6xDRtlhTft55rFE6QizN78f
 MC+w2gHo7i28YK5QoWJ5FYbfguzumXvH1Q7BWduSnskHWatALu1SmmL1RrZnWqIF6gwI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xRumOHpdhjBzG+hcKs5QEmP7f8MoN1eTVZymP9CF6HQ=; b=NBia3MYOsAuixQHtO65LDeARg1
 htlldmF0XLl6KzuNdWmzUq0JTpqEw7VrOSmZ5EqPyWkPrDSts6bLrzSnLQy3lD6PD6ELLZQ5PEY8M
 RYgBx/1BkXw+EmNNxShYvtIRndyh8bHA59sM1lfEwR9YU5T6OKb9Gi4VJarQVvwGMVFQ=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kDudu-00AvCO-63
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Sep 2020 19:11:35 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 796A115C8687B;
 Thu,  3 Sep 2020 11:54:27 -0700 (PDT)
Date: Thu, 03 Sep 2020 12:11:13 -0700 (PDT)
Message-Id: <20200903.121113.1765709206599358636.davem@davemloft.net>
To: w@uter.be
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200903120515.GC8553@pc181009.grep.be>
References: <20200903113141.GB8553@pc181009.grep.be>
 <74538f06-1f88-c484-7908-a16e5cac7614@i-love.sakura.ne.jp>
 <20200903120515.GC8553@pc181009.grep.be>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Thu, 03 Sep 2020 11:54:27 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: uter.be]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kDudu-00AvCO-63
Subject: Re: [tipc-discussion] [PATCH] tipc: fix shutdown() of
 connectionless socket
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
Cc: syzbot+e36f41d207137b5d12f7@syzkaller.appspotmail.com,
 penguin-kernel@i-love.sakura.ne.jp, netdev@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, tipc-discussion@lists.sourceforge.net,
 kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Wouter Verhelst <w@uter.be>
Date: Thu, 3 Sep 2020 14:05:15 +0200

> That's fine, because NBD doesn't deal with SOCK_DGRAM sockets anyway
> (i.e., passing a SOCK_DGRAM socket to the NBD device is undefined
> behavior).

Then why doesn't NBD simply reject such sockets?



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
