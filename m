Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB0F123938
	for <lists+tipc-discussion@lfdr.de>; Tue, 17 Dec 2019 23:17:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ihL9o-0000kI-9T; Tue, 17 Dec 2019 22:17:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1ihL9m-0000k9-RX
 for tipc-discussion@lists.sourceforge.net; Tue, 17 Dec 2019 22:17:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+D6gzN/HS7YKGB21QuDXvDsrGtXJEVQcx/A8m/w8/MQ=; b=MuyRunG4AV3RvULtL3GvNiP7NE
 DBRHaL+aFIB1EcXnX0RrOeBgyb4HVxI35DPO5KJcq9YmIk4POfVpkx8t2JChwYgPJbqkVqlBkQghS
 jfwvjHLVlHJ/1eKUR8IEIdFbxYbHNQmdS4gevi/Nx4mRAKaIuBP4hMKXQ4p7L/r4Jkec=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+D6gzN/HS7YKGB21QuDXvDsrGtXJEVQcx/A8m/w8/MQ=; b=YG80u8QE7vPApVRkDMRB6HmxGj
 bRg0T0p2EnsIdE7kcPvmay/ENUpwVr2Dc1XjgmPKtP0X1gNqbK5a6ewLDGfrbuyi3dDNDokGwItVe
 s61rLnLeUDMlIEhQZHUbI62+D2fpeHsvWJY67Cuj9k7K82lOLuw5DPrHXw3wkoA1kRM8=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ihL9l-00828U-7Z
 for tipc-discussion@lists.sourceforge.net; Tue, 17 Dec 2019 22:17:30 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4044E1473DC0B;
 Tue, 17 Dec 2019 14:17:19 -0800 (PST)
Date: Tue, 17 Dec 2019 14:17:18 -0800 (PST)
Message-Id: <20191217.141718.1870382028958768011.davem@davemloft.net>
To: jon.maloy@ericsson.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <1576520462-25952-1-git-send-email-jon.maloy@ericsson.com>
References: <1576520462-25952-1-git-send-email-jon.maloy@ericsson.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 17 Dec 2019 14:17:19 -0800 (PST)
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
X-Headers-End: 1ihL9l-00828U-7Z
Subject: Re: [tipc-discussion] [net-next 1/1] tipc: don't send gap blocks in
 ACK messages
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
Date: Mon, 16 Dec 2019 19:21:02 +0100

> In the commit referred to below we eliminated sending of the 'gap'
> indicator in regular ACK messages, reserving this to explicit NACK
> ditto.
> 
> Unfortunately we missed to also eliminate building of the 'gap block'
> area in ACK messages. This area is meant to report gaps in the
> received packet sequence following the initial gap, so that lost
> packets can be retransmitted earlier and received out-of-sequence
> packets can be released earlier. However, the interpretation of those
> blocks is dependent on a complete and correct sequence of gaps and
> acks. Hence, when the initial gap indicator is missing a single gap
> block will be interpreted as an acknowledgment of all preceding
> packets. This may lead to packets being released prematurely from the
> sender's transmit queue, with easily predicatble consequences.
> 
> We now fix this by not building any gap block area if there is no
> initial gap to report.
> 
> Fixes: commit 02288248b051 ("tipc: eliminate gap indicator from ACK messages")
> Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>

Applied, thanks Jon.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
