Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C157E54F
	for <lists+tipc-discussion@lfdr.de>; Fri,  2 Aug 2019 00:20:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1htJQk-00063d-K0; Thu, 01 Aug 2019 22:20:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1htJQj-00063N-27
 for tipc-discussion@lists.sourceforge.net; Thu, 01 Aug 2019 22:20:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8zsQ03J+DzauNQtVJG239kN47SxQ/opJaoKb16B11wg=; b=CRQ1sXMgxQdJc/3XM9LlfnHoxu
 ALwGzzW+lylJEal156P5uvK8uxcx369YUGUdijdegzWsEtFPsFWebhkUjMr7/yoN8OYOoTtrKbNgM
 kwJ5SAvft6u2ZnExWpJNItfDxXda2tH2nZB+PozO94q4NYXSQ0eIQNnQ1Hqonv4DOSi4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8zsQ03J+DzauNQtVJG239kN47SxQ/opJaoKb16B11wg=; b=Eg55qF6gRNcRaA2hLjH3IBQJRY
 7q/jayVr8GN9MZdXxbKCvTKbIdB7BlrDWq/FJaZAsSiNO9TN/OuaGWGYJ8umGxDSpIWYj196QzFlD
 ruL+r/06ndkQiDky2oW1BznY6XobH2uBKyZfZufRk1KjtPDZNeJVUj62Ahx+Pawio82E=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1htJQh-0073Ij-1N
 for tipc-discussion@lists.sourceforge.net; Thu, 01 Aug 2019 22:20:13 +0000
Received: from localhost (unknown [172.58.27.22])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id C080D15434E4E;
 Thu,  1 Aug 2019 15:20:01 -0700 (PDT)
Date: Thu, 01 Aug 2019 18:19:59 -0400 (EDT)
Message-Id: <20190801.181959.616930719935387626.davem@davemloft.net>
To: jon.maloy@ericsson.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <1564496598-5080-1-git-send-email-jon.maloy@ericsson.com>
References: <1564496598-5080-1-git-send-email-jon.maloy@ericsson.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 01 Aug 2019 15:20:02 -0700 (PDT)
X-Spam-Score: 0.0 (/)
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
X-Headers-End: 1htJQh-0073Ij-1N
Subject: Re: [tipc-discussion] [net-next 1/1] tipc: reduce risk of wakeup
 queue starvation
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
Date: Tue, 30 Jul 2019 16:23:18 +0200

> In commit 365ad353c256 ("tipc: reduce risk of user starvation during
> link congestion") we allowed senders to add exactly one list of extra
> buffers to the link backlog queues during link congestion (aka
> "oversubscription"). However, the criteria for when to stop adding
> wakeup messages to the input queue when the overload abates is
> inaccurate, and may cause starvation problems during very high load.
> 
> Currently, we stop adding wakeup messages after 10 total failed attempts
> where we find that there is no space left in the backlog queue for a
> certain importance level. The counter for this is accumulated across all
> levels, which may lead the algorithm to leave the loop prematurely,
> although there may still be plenty of space available at some levels.
> The result is sometimes that messages near the wakeup queue tail are not
> added to the input queue as they should be.
> 
> We now introduce a more exact algorithm, where we keep adding wakeup
> messages to a level as long as the backlog queue has free slots for
> the corresponding level, and stop at the moment there are no more such
> slots or when there are no more wakeup messages to dequeue.
> 
> Fixes: 365ad35 ("tipc: reduce risk of user starvation during link congestion")
> Reported-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> Acked-by: Ying Xue <ying.xue@windriver.com>
> Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>

Applied, thank you.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
