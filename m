Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A346C149418
	for <lists+tipc-discussion@lfdr.de>; Sat, 25 Jan 2020 10:18:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ivHac-0004JQ-A2; Sat, 25 Jan 2020 09:18:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1ivHab-0004JJ-8Z
 for tipc-discussion@lists.sourceforge.net; Sat, 25 Jan 2020 09:18:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+6Es/JCZmmd36C70UyF3GvmbLuouN7qPvYOEDf4LclI=; b=OBiwQ0B5s6wKZAAe53b+cz3IlO
 q+d/2B/yD/z7SIKAQxU4SOQ6rrQJ0B/1ul+2oJw/jyWNyECIZrBa0XvX59KZrowrC3dvDfSN+yZT6
 bpxY+CYzmeLqQnvXQE7VSmO9RFcHFmOqFgXi8+POHsObaWZYNKitb2PMWoG+FipExW18=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+6Es/JCZmmd36C70UyF3GvmbLuouN7qPvYOEDf4LclI=; b=fTJsy2pjHZqz4Myi/MTorXL5Re
 9OyVpVfMjFMkG/n/R9bItbDUbDYv24BW3zu4hxC7YlUB3gOK67wjnpp8FUjOTvJLgcsxhE0+H8E7S
 b9pCSfP2Du15GGrXMEJ/VHHtAKHYJwEkFX7XIdQEY8mODsiaeCIWU6kvEIO5VAi1T668=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ivHaZ-000FPh-Ut
 for tipc-discussion@lists.sourceforge.net; Sat, 25 Jan 2020 09:18:49 +0000
Received: from localhost (unknown [147.229.117.36])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 628A615A1B6A5;
 Sat, 25 Jan 2020 01:18:36 -0800 (PST)
Date: Sat, 25 Jan 2020 10:18:34 +0100 (CET)
Message-Id: <20200125.101834.1762438566481248767.davem@davemloft.net>
To: jmaloy@redhat.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <1579792179-3632-1-git-send-email-jmaloy@redhat.com>
References: <1579792179-3632-1-git-send-email-jmaloy@redhat.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 25 Jan 2020 01:18:38 -0800 (PST)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ivHaZ-000FPh-Ut
Subject: Re: [tipc-discussion] [net-next 1/1] tipc: change maintainer email
 address
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
Cc: xinl@redhat.com, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Jon Maloy <jmaloy@redhat.com>
Date: Thu, 23 Jan 2020 10:09:39 -0500

> Reflecting new realities.
> 
> Signed-off-by: Jon Maloy <jmaloy@redhat.com>

Applied to 'net'.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
