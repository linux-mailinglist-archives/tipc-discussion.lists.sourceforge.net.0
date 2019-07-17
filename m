Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 475376C320
	for <lists+tipc-discussion@lfdr.de>; Thu, 18 Jul 2019 00:25:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hnsM8-00051m-Nm; Wed, 17 Jul 2019 22:25:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hnsM7-00051e-N3
 for tipc-discussion@lists.sourceforge.net; Wed, 17 Jul 2019 22:24:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1FZ/euiN+NfQmXqLYAuhuc6uSC8y3TwbL95prUh2hY4=; b=TuBk7hnFerrC4il+/eWj9iEBvl
 j4e7obYMKH2dqaz/h2pmioVI/Sx/vXOJZEa3hMaas18sZz8wJ8awoTJ59k8VPcIXRDOl09u0Wj2v4
 79cl3X8AqlGgZDavCzlBlmrfjkLtM/18arXRobcYCKHbilTEtj5dc5VJ7MgdBzb5rV20=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1FZ/euiN+NfQmXqLYAuhuc6uSC8y3TwbL95prUh2hY4=; b=YMM62lz0VH39w2KD0x8cXI2OIi
 0v1NERHz5Qxa40c7CR1QbLX/aPoMIR3+rr/ov1fbSecy0Y+EH0DRTejmu5Rmgqutn9eJMGcM8vbsQ
 J4+lqxk8+2Iw97l1OKRIs7O2eNGYcOght/80OhLhaX+5oaX4AZFR3hEJXdA5mN8wZNMg=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hnsM5-0059MX-Vx
 for tipc-discussion@lists.sourceforge.net; Wed, 17 Jul 2019 22:24:59 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A3B1C14EC5846;
 Wed, 17 Jul 2019 15:24:49 -0700 (PDT)
Date: Wed, 17 Jul 2019 15:24:49 -0700 (PDT)
Message-Id: <20190717.152449.1720887196144102382.davem@davemloft.net>
To: jon.maloy@ericsson.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <1563399824-4462-1-git-send-email-jon.maloy@ericsson.com>
References: <1563399824-4462-1-git-send-email-jon.maloy@ericsson.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 17 Jul 2019 15:24:50 -0700 (PDT)
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
X-Headers-End: 1hnsM5-0059MX-Vx
Subject: Re: [tipc-discussion] [net 1/1] tipc: initialize 'validated' field
 of received packets
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
Date: Wed, 17 Jul 2019 23:43:44 +0200

> The tipc_msg_validate() function leaves a boolean flag 'validated' in
> the validated buffer's control block, to avoid performing this action
> more than once. However, at reception of new packets, the position of
> this field may already have been set by lower layer protocols, so
> that the packet is erroneously perceived as already validated by TIPC.
> 
> We fix this by initializing the said field to 'false' before performing
> the initial validation.
> 
> Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
