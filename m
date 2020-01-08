Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2E6134DC1
	for <lists+tipc-discussion@lfdr.de>; Wed,  8 Jan 2020 21:39:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ipI6r-0008Kd-Ja; Wed, 08 Jan 2020 20:39:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1ipI6q-0008KW-As
 for tipc-discussion@lists.sourceforge.net; Wed, 08 Jan 2020 20:39:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L60f3tsLdMgIqH1QNEpvodmO2qTugIS+kL3rXOWFAlo=; b=KYtjlol4WQ1260VoMZcdaC+XVJ
 2V1pajKoAw7+NGlOUSSXxzkzEv0PoP62PqRPydISpU8JX45u/f/sWSf2C9KwUnJouz5V49p34v28/
 a2OE5cb2hc7iNZHJXrKKBWlhB0djt4rklt18JzusjUG4a0rb8DhC8SARdFJLMKN4rdw0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=L60f3tsLdMgIqH1QNEpvodmO2qTugIS+kL3rXOWFAlo=; b=H5pWyh1pC65aKWfA8ZaoOTMCj7
 dqVCqei3WshmQDEH5aYiyCk0ZG/LlZ6YkiThvAH2bl+FN+pB2CW/LP4GsP6KPOFya2AVxkgQzv3Pq
 arbJ8azRGwiP7H2SoNCcZ/7/xf0fh+g5/qOh67P1ok7Vo8QnyhpdkwKEZ333dOYMqjP8=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ipI6o-00EtaS-VA
 for tipc-discussion@lists.sourceforge.net; Wed, 08 Jan 2020 20:39:20 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 1C3CD1584BD18;
 Wed,  8 Jan 2020 12:39:09 -0800 (PST)
Date: Wed, 08 Jan 2020 12:39:08 -0800 (PST)
Message-Id: <20200108.123908.1308135200682526279.davem@davemloft.net>
To: masahiroy@kernel.org
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200106073527.18697-1-masahiroy@kernel.org>
References: <20200106073527.18697-1-masahiroy@kernel.org>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 08 Jan 2020 12:39:09 -0800 (PST)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ipI6o-00EtaS-VA
Subject: Re: [tipc-discussion] [PATCH 1/2] tipc: do not add socket.o to
 tipc-y twice
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
Cc: tipc-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon,  6 Jan 2020 16:35:26 +0900

> net/tipc/Makefile adds socket.o twice.
> 
> tipc-y	+= addr.o bcast.o bearer.o \
>            core.o link.o discover.o msg.o  \
>            name_distr.o  subscr.o monitor.o name_table.o net.o  \
>            netlink.o netlink_compat.o node.o socket.o eth_media.o \
>                                              ^^^^^^^^
>            topsrv.o socket.o group.o trace.o
>                     ^^^^^^^^
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
