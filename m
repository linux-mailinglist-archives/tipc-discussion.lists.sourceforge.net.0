Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0830B4A7D1
	for <lists+tipc-discussion@lfdr.de>; Tue, 18 Jun 2019 19:04:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hdHWl-0006g0-O1; Tue, 18 Jun 2019 17:04:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hdHWk-0006ft-WB
 for tipc-discussion@lists.sourceforge.net; Tue, 18 Jun 2019 17:04:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ycDdlQMYaRap2shjONy7WCHWInzHfjmqGwAR+i+53Uo=; b=EU9sCkblm7g7A64XDBGwRdRip3
 B0lHcJgMcP87meryYLb7Be4Zc6cvEaa6Bic1kqUFZ3pcpUccO26hFujwUN2gUT7TGAa78D1xhclN9
 ETgpW1ywZDncnsUeVgUONOu6Cg06UU6QzCuobLjyXh8n0bYy2MWvkf2UAd/H47d6Rm+o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ycDdlQMYaRap2shjONy7WCHWInzHfjmqGwAR+i+53Uo=; b=ZNBDImjQZWjNbqXDTWQJmbgRG6
 jU+HDGpPYKou2Tym27CJbJ6d/hXVFeEHR4JhDn9qluSyZD7zuFivGt/V2WI2sBiwC8FdG/XwhZDif
 TP7ThX50LK8sSWxw6747ev1pOqYUGwWvmJdrf2go3WcTOfmIpRG6iGaM5vY6vUEvvzvU=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hdHWg-003Hcu-DV
 for tipc-discussion@lists.sourceforge.net; Tue, 18 Jun 2019 17:04:07 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 7ACD6150AFBD5;
 Tue, 18 Jun 2019 10:03:57 -0700 (PDT)
Date: Tue, 18 Jun 2019 10:03:57 -0700 (PDT)
Message-Id: <20190618.100357.465659839647007124.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190617045612.3509-1-tuong.t.lien@dektech.com.au>
References: <20190617045612.3509-1-tuong.t.lien@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 18 Jun 2019 10:03:57 -0700 (PDT)
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
X-Headers-End: 1hdHWg-003Hcu-DV
Subject: Re: [tipc-discussion] [net] tipc: fix issues with early
 FAILOVER_MSG from peer
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

From: Tuong Lien <tuong.t.lien@dektech.com.au>
Date: Mon, 17 Jun 2019 11:56:12 +0700

> It appears that a FAILOVER_MSG can come from peer even when the failure
> link is resetting (i.e. just after the 'node_write_unlock()'...). This
> means the failover procedure on the node has not been started yet.
> The situation is as follows:
 ...
> Once this happens, the link failover procedure will be triggered
> wrongly on the receiving node since the node isn't in FAILINGOVER state
> but then another link failover will be carried out.
> The consequences are:
> 
> 1) A peer might get stuck in FAILINGOVER state because the 'sync_point'
> was set, reset and set incorrectly, the criteria to end the failover
> would not be met, it could keep waiting for a message that has already
> received.
> 
> 2) The early FAILOVER_MSG(s) could be queued in the link failover
> deferdq but would be purged or not pulled out because the 'drop_point'
> was not set correctly.
> 
> 3) The early FAILOVER_MSG(s) could be dropped too.
> 
> 4) The dummy FAILOVER_MSG could make the peer leaving FAILINGOVER state
> shortly, but later on it would be restarted.
> 
> The same situation can also happen when the link is in PEER_RESET state
> and a FAILOVER_MSG arrives.
> 
> The commit resolves the issues by forcing the link down immediately, so
> the failover procedure will be started normally (which is the same as
> when receiving a FAILOVER_MSG and the link is in up state).
> 
> Also, the function "tipc_node_link_failover()" is toughen to avoid such
> a situation from happening.
> 
> Acked-by: Jon Maloy <jon.maloy@ericsson.se>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

Applied, thank you.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
