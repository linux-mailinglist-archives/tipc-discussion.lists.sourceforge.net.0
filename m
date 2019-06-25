Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1788A558EE
	for <lists+tipc-discussion@lfdr.de>; Tue, 25 Jun 2019 22:34:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hfs8x-0005lG-IE; Tue, 25 Jun 2019 20:34:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hfs8w-0005l5-I0
 for tipc-discussion@lists.sourceforge.net; Tue, 25 Jun 2019 20:34:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HcQDSA6wqH6qQo6/juZN+ytPHgIDwQKKeQQT7qKdxR4=; b=MhGiGfYRMrjTWt4px4wxdA9tj+
 ASeWHin84wyvpiada4S13rxYAAjGkdHIJsDSSkMXHqTxX3WWq1mVMcdC6yqwA2vIrSjSeAue2rCrU
 3U7jXMWurRujwXS46TQXo/7TM3jhVSCFzZDyJ+HmB6PRfiEcvvR0PNnESr52Ra55PctU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HcQDSA6wqH6qQo6/juZN+ytPHgIDwQKKeQQT7qKdxR4=; b=CTGxb+YXY9LMwnzrbKjOPTvUjZ
 uFu+nSSTVVt5ey/wd2s6ypTH6G4oBedO8/xCnzDkByk0Uz0QcmFm+1npKKAB5ao+/AcNSzbk8AyQ7
 YT0p7FXGNY3kTX9x6vppOB52u0Caf9S7pWW9L50dq9xPmz2hus8x1r2gon63RlAdwrbM=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hfs93-009yNP-0u
 for tipc-discussion@lists.sourceforge.net; Tue, 25 Jun 2019 20:34:26 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 06923128FF110;
 Tue, 25 Jun 2019 13:34:15 -0700 (PDT)
Date: Tue, 25 Jun 2019 13:34:15 -0700 (PDT)
Message-Id: <20190625.133415.1358006150660179231.davem@davemloft.net>
To: jon.maloy@ericsson.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <1561477003-25362-1-git-send-email-jon.maloy@ericsson.com>
References: <1561477003-25362-1-git-send-email-jon.maloy@ericsson.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 25 Jun 2019 13:34:16 -0700 (PDT)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hfs93-009yNP-0u
Subject: Re: [tipc-discussion] [net-next 1/1] tipc: simplify stale link
 failure criteria
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
Date: Tue, 25 Jun 2019 17:36:43 +0200

> In commit a4dc70d46cf1 ("tipc: extend link reset criteria for stale
> packet retransmission") we made link retransmission failure events
> dependent on the link tolerance, and not only of the number of failed
> retransmission attempts, as we did earlier. This works well. However,
> keeping the original, additional criteria of 99 failed retransmissions
> is now redundant, and may in some cases lead to failure detection
> times in the order of minutes instead of the expected 1.5 sec link
> tolerance value.
> 
> We now remove this criteria altogether.
> 
> Acked-by: Ying Xue <ying.xue@windriver.com>
> Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
