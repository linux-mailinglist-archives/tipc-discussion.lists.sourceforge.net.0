Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A03E65C6FB
	for <lists+tipc-discussion@lfdr.de>; Tue,  2 Jul 2019 04:13:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hi8Hc-0004Az-LY; Tue, 02 Jul 2019 02:12:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hi8Hb-0004Ar-31
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Jul 2019 02:12:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/zVI3tbXypYQvv93+KhDU96e19X5Ku//7j016NjAktE=; b=CMm4EQQkOKCWoIxn6QtjI2b6JE
 FPjT/IyrTSHolN/1jrPoyxLTflQ4c8V7i0OUgfPHsKRrJYQy5QYI1Iaa5qoZByb6qGljdGJMmZBbf
 CV0hmlxIk0o6f4ihcXbb2gslI8Iu1zR5cFXdm6OdS0gUe8LEOO90HiZmxB4RQwaIgrO4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/zVI3tbXypYQvv93+KhDU96e19X5Ku//7j016NjAktE=; b=O0MzO/usWX5E56lmA3xQULsU/p
 qvN/15Rj6DTDdB0L9tg2K5cgfGDEzEvnSbSptVtcqcCZxsCLsQhpmsSSvv7pFj3adr6TE2GzWhx81
 hH3M7zg81k7iIZHC1n/rQ/BXDosFuDMWz63H6M+JmjyTPTpn0/DTto+b6bhNokL4mugo=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hi8Ho-003yEK-4c
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Jul 2019 02:12:50 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 85A2114DE97D0;
 Mon,  1 Jul 2019 19:12:41 -0700 (PDT)
Date: Mon, 01 Jul 2019 19:12:41 -0700 (PDT)
Message-Id: <20190701.191241.335884007515356911.davem@davemloft.net>
To: jon.maloy@ericsson.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <1561734380-26868-1-git-send-email-jon.maloy@ericsson.com>
References: <1561734380-26868-1-git-send-email-jon.maloy@ericsson.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 01 Jul 2019 19:12:41 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hi8Ho-003yEK-4c
Subject: Re: [tipc-discussion] [net-next 1/1] tipc: embed jiffies in macro
 TIPC_BC_RETR_LIM
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

From: Jon Maloy <jon.maloy@ericsson.com>
Date: Fri, 28 Jun 2019 17:06:20 +0200

> The macro TIPC_BC_RETR_LIM is always used in combination with 'jiffies',
> so we can just as well perform the addition in the macro itself. This
> way, we get a few shorter code lines and one less line break.
> 
> Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
