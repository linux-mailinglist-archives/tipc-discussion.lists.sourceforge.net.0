Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C34248F02
	for <lists+tipc-discussion@lfdr.de>; Tue, 18 Aug 2020 21:47:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k87Zq-00032L-Bg; Tue, 18 Aug 2020 19:47:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1k87Zo-00032B-6a
 for tipc-discussion@lists.sourceforge.net; Tue, 18 Aug 2020 19:47:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tN/EXT9794QaMyHvvyZ6whS/ZmIcwR76lXTLMR5fHqk=; b=bcQWOKWnBpjbd3sBeF/aDziqF2
 AWxxigxxgtANKk77KOONPh7evgiDdsw3kw1ZxlpbvkTsVz45vYDjsNnBAxD7K+AE5NGXV1srk8php
 If1KTAOYM3tQjSuWE2KeVRXsgXS46n+nGZ0WWWfrTyA1HiawEgMaL61BiyNm5zvuXOWE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tN/EXT9794QaMyHvvyZ6whS/ZmIcwR76lXTLMR5fHqk=; b=Zkgoz05xP2pXYGhPjPlKzLI/2+
 fW9LMfznI2Pel3iYgrDfYxclMICySsViOdz6dRq0LutMAcVPAUfhyeEXEWeZlij8vc/+Yry0TOMMy
 0BCkhH3C/2vU5LFi6O8eVt4JmshcjTsuFXjn9JIcwUeZ+lFu6DDCBD6h0JQx2PYqq76U=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k87Zk-000m9e-Q1
 for tipc-discussion@lists.sourceforge.net; Tue, 18 Aug 2020 19:47:20 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id E0795127A25B7;
 Tue, 18 Aug 2020 12:30:20 -0700 (PDT)
Date: Tue, 18 Aug 2020 12:47:06 -0700 (PDT)
Message-Id: <20200818.124706.418809583694757417.davem@davemloft.net>
To: linmiaohe@huawei.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200818120713.25381-1-linmiaohe@huawei.com>
References: <20200818120713.25381-1-linmiaohe@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 18 Aug 2020 12:30:21 -0700 (PDT)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k87Zk-000m9e-Q1
Subject: Re: [tipc-discussion] [PATCH] net: tipc: Convert to use the
 preferred fallthrough macro
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

From: Miaohe Lin <linmiaohe@huawei.com>
Date: Tue, 18 Aug 2020 08:07:13 -0400

> Convert the uses of fallthrough comments to fallthrough macro.
> 
> Signed-off-by: Miaohe Lin <linmiaohe@huawei.com>

Applied to net-next.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
