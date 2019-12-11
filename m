Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A97C911A085
	for <lists+tipc-discussion@lfdr.de>; Wed, 11 Dec 2019 02:31:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ieqqu-00063A-Kz; Wed, 11 Dec 2019 01:31:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1ieqqt-00062r-Lk
 for tipc-discussion@lists.sourceforge.net; Wed, 11 Dec 2019 01:31:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/j/Mzh9WOQeoqPiakDPEivpFtrRSVnRghuhbhLeNk1M=; b=PWJ375Q2t1gZJaJKn30mydrnk0
 zYt++DM104gZNoQUblIe7YHXvcQBAic1+xKiaTdnrEtgz5yKFDXp+hpn7uxijqri3h8DW6rY6ZSC1
 tSX8NENUSypC3YdQ4BeuOZGBbwU/Y6U8o5SIHWu8KlAWPnXE1eZbArbNE/p2M06Dor+Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/j/Mzh9WOQeoqPiakDPEivpFtrRSVnRghuhbhLeNk1M=; b=IPoad1kEze6mjNUXnQs52SrZ3/
 T/Oj0kCD/H9/lQRVimgrstIujpzZI4ahC0/1Nkgqt5jZllfVeaWzhvxHIxOr8EY/VVBJM//urxhqd
 Y31zbY3Ma+nrfjfsYjFt2iSankBP1goyO70w+w4Btor/9NuLH7Y+yTJeK6dfxZ+pJG1Q=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ieqqs-000dgy-2a
 for tipc-discussion@lists.sourceforge.net; Wed, 11 Dec 2019 01:31:43 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id BB39615038ABC;
 Tue, 10 Dec 2019 17:31:29 -0800 (PST)
Date: Tue, 10 Dec 2019 17:31:29 -0800 (PST)
Message-Id: <20191210.173129.1090510183877704403.davem@davemloft.net>
To: jon.maloy@ericsson.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <1575935566-18786-1-git-send-email-jon.maloy@ericsson.com>
References: <1575935566-18786-1-git-send-email-jon.maloy@ericsson.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 10 Dec 2019 17:31:30 -0800 (PST)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ieqqs-000dgy-2a
Subject: Re: [tipc-discussion] [net-next 0/3] tipc: introduce variable
 window congestion control
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
Cc: netdev@vger.kernel.org, lxin@redhat.com, edumazet@google.com,
 tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Jon Maloy <jon.maloy@ericsson.com>
Date: Tue, 10 Dec 2019 00:52:43 +0100

> We improve thoughput greatly by introducing a variety of the Reno 
> congestion control algorithm at the link level.

Series applied, thanks Jon.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
