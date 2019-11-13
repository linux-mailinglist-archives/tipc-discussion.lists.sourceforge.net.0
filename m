Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAB7FA787
	for <lists+tipc-discussion@lfdr.de>; Wed, 13 Nov 2019 04:46:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iUjbh-0004we-Iz; Wed, 13 Nov 2019 03:46:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1iUjbf-0004wN-OE
 for tipc-discussion@lists.sourceforge.net; Wed, 13 Nov 2019 03:46:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G/hc93tSr+EJ4yu2nXqjUUa7e7YNJ64HRqxOexUJkXE=; b=LFG4vUCw7nsMXj69r6tSHL9jYa
 ObsEj77deNuVPk8y2nqvaN2jbZ+y67ezyZsSamW8PEh0lyIKxBo9DQydQhAWasRtE+Qp4G4Y0PMNM
 XklzB1K/e0/QddmfTmsja9DBPGocmQGjytJOUXoG5iRLM6le2R9Nc4QOAfW6iMCt3DM4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G/hc93tSr+EJ4yu2nXqjUUa7e7YNJ64HRqxOexUJkXE=; b=KBNaDm+WAooDGUhmB97I5sS12j
 BoPmQelliF4CQGOEDGk8W0kFNI2er4Kgp8OoyD3wubBbujQOuKOkD+Bujj0AJnnUNmUqn01b/cULu
 XHHTQgMgTX27y/xrjeQr1V3WvwpayvyBqVVwqlzWQslGHy/9EFo97Q3J6ZXceg9jdHvs=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iUjbd-000ToX-Ix
 for tipc-discussion@lists.sourceforge.net; Wed, 13 Nov 2019 03:46:11 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id C6B2E154FFB1E;
 Tue, 12 Nov 2019 19:45:55 -0800 (PST)
Date: Tue, 12 Nov 2019 19:45:55 -0800 (PST)
Message-Id: <20191112.194555.2091644272236024677.davem@davemloft.net>
To: hoang.h.le@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191112004004.3625-1-hoang.h.le@dektech.com.au>
References: <20191112004004.3625-1-hoang.h.le@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 12 Nov 2019 19:45:56 -0800 (PST)
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iUjbd-000ToX-Ix
Subject: Re: [tipc-discussion] [net-next] tipc: update mon's self addr when
 node addr generated
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

From: Hoang Le <hoang.h.le@dektech.com.au>
Date: Tue, 12 Nov 2019 07:40:04 +0700

> In commit 25b0b9c4e835 ("tipc: handle collisions of 32-bit node address
> hash values"), the 32-bit node address only generated after one second
> trial period expired. However the self's addr in struct tipc_monitor do
> not update according to node address generated. This lead to it is
> always zero as initial value. As result, sorting algorithm using this
> value does not work as expected, neither neighbor monitoring framework.
> 
> In this commit, we add a fix to update self's addr when 32-bit node
> address generated.
> 
> Fixes: 25b0b9c4e835 ("tipc: handle collisions of 32-bit node address hash values")
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
