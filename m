Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D671F108F
	for <lists+tipc-discussion@lfdr.de>; Mon,  8 Jun 2020 01:56:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ji59i-0001y5-2D; Sun, 07 Jun 2020 23:56:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1ji59g-0001xa-Rg
 for tipc-discussion@lists.sourceforge.net; Sun, 07 Jun 2020 23:56:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JsLY2+E4PoBxfPedSXgAZ9HWbYPhJ5x9jtQZnOYOxJw=; b=VM6YcqhTxshWOWluJ0lQZPsvGM
 u1RmvfuKqM5mgWPonh2aYac2wIUvRfEIsYxBi41nusdwvMAZCHwJ3GMPy6/BtXgPqKkzwzUj1vyBH
 g1vzKjr4BzY0ELFw5Ap1AdyKMbjp7EdyxtPkz7QON8vSJ8kysqF7oYKAY4sc7Bn5mngM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JsLY2+E4PoBxfPedSXgAZ9HWbYPhJ5x9jtQZnOYOxJw=; b=UJXIeK2R1sUclmz7/lsr5Alw8C
 zPEXKeer9JfqYNg28kN/mxr393eJgdmpt1peQ0rmSmue4Djr6KiUK6Wjj9Ei437+SHFz/B1Hc5KO0
 FU/KJmsc+Dqhp+DjI8VfOhUO4Wcm7F02wz0ijl84xhGN27/LbuGGOlLB7Cmo+BcCxrVw=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ji59d-00FUEo-KG
 for tipc-discussion@lists.sourceforge.net; Sun, 07 Jun 2020 23:56:44 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id E101C1273C091;
 Sun,  7 Jun 2020 16:56:27 -0700 (PDT)
Date: Sun, 07 Jun 2020 16:56:27 -0700 (PDT)
Message-Id: <20200607.165627.2235918555211807219.davem@davemloft.net>
To: hoang.h.le@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200607042443.11104-1-hoang.h.le@dektech.com.au>
References: <20200607042443.11104-1-hoang.h.le@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 07 Jun 2020 16:56:28 -0700 (PDT)
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ji59d-00FUEo-KG
Subject: Re: [tipc-discussion] [net-next] tipc: update a binding service via
 broadcast
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


net-next is CLOSED, thank you


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
