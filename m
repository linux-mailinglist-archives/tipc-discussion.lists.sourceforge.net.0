Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 955661EAC21
	for <lists+tipc-discussion@lfdr.de>; Mon,  1 Jun 2020 20:34:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jfpGX-0002Ya-BZ; Mon, 01 Jun 2020 18:34:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1jfpGV-0002YE-O8
 for tipc-discussion@lists.sourceforge.net; Mon, 01 Jun 2020 18:34:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=93qjA2gklEJdkNK3aYOTEpHQxBxXJ/hVXx8nBBLdwec=; b=V0DhRupFxVnQNeH6La1lAHft9F
 SQeUtPpSk8eJ0Ynzqsrn4U01BTBlRX0Uho+srfdcuLdjau2VZr/Kqej2wad+sO/Nml6Kpo7wn51nR
 veQm1zah3vPFkGOYLvNsJWiubiQixYwIJLCOaqNECTXQblUeAiCQko/sOzggTjwOthUU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=93qjA2gklEJdkNK3aYOTEpHQxBxXJ/hVXx8nBBLdwec=; b=eirwuvRp4NQydqvyL20FoexK4r
 ZMBHJwN/FnSZ5angTS1THZCjBSDOEXWKc3CgRn/2NJ6/HzMWRY1JDZZY4YLCWWO/1OrYvgN6+g+/+
 er8ZYLAlEJi/B2cRdWHWj5mwNyp2xBwcDylM+wBtq0Cj05efcAs9DBix1meBbmy6qVoE=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jfpGS-004VNY-Tl
 for tipc-discussion@lists.sourceforge.net; Mon, 01 Jun 2020 18:34:27 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 477B111D53F8B;
 Mon,  1 Jun 2020 11:34:15 -0700 (PDT)
Date: Mon, 01 Jun 2020 11:34:13 -0700 (PDT)
Message-Id: <20200601.113413.1506796443678765558.davem@davemloft.net>
To: yuehaibing@huawei.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200528143407.56196-1-yuehaibing@huawei.com>
References: <20200528143407.56196-1-yuehaibing@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 01 Jun 2020 11:34:15 -0700 (PDT)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jfpGS-004VNY-Tl
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: Fix NULL pointer
 dereference in __tipc_sendstream()
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: YueHaibing <yuehaibing@huawei.com>
Date: Thu, 28 May 2020 22:34:07 +0800

> tipc_sendstream() may send zero length packet, then tipc_msg_append()
> do not alloc skb, skb_peek_tail() will get NULL, msg_set_ack_required
> will trigger NULL pointer dereference.
> 
> Reported-by: syzbot+8eac6d030e7807c21d32@syzkaller.appspotmail.com
> Fixes: 0a3e060f340d ("tipc: add test for Nagle algorithm effectiveness")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Can a TIPC expert please review this?

Thank you.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
