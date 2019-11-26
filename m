Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BBA10A3CD
	for <lists+tipc-discussion@lfdr.de>; Tue, 26 Nov 2019 19:04:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iZfC7-0005GV-Bu; Tue, 26 Nov 2019 18:04:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1iZfC5-0005GG-Jc
 for tipc-discussion@lists.sourceforge.net; Tue, 26 Nov 2019 18:04:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DD1G7OO8H9fHVpXnVcD3GMKKfApl+VmMwH46JNGg+y4=; b=hOP+E3ooAMi2zX4RSofQr+tnWj
 XSg/IM1cIi6Bmv6med32klTiSiuJ9K8u9nC8htDnlP857PvinpI44Q3YeHUAAHs8zH1IAEUHvPSk7
 xQObSPmJ85caVy01y0qdTIctndeEyqduiVnD7vMheZhwHkNWUvJTPBfbaA492JhlTvs0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DD1G7OO8H9fHVpXnVcD3GMKKfApl+VmMwH46JNGg+y4=; b=HhkoUGbzwzmmx2kPLsvaz7wRma
 U/Vbc99KMxUImp75BDEjIDy62m89ZVABZOSpFnlyHPJGAIKZ0EeUaIbMZruebB21Ob77l86tyWROn
 IZMbS96qHA5CwjRLEB13F/HYAfN7ZD+MkedsWfY7f8OiZesGbw9drimMtmZuh/g8CBFY=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iZfC3-00ENC1-Jt
 for tipc-discussion@lists.sourceforge.net; Tue, 26 Nov 2019 18:04:09 +0000
Received: from localhost (c-73-35-209-67.hsd1.wa.comcast.net [73.35.209.67])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id C88E914C1F352;
 Tue, 26 Nov 2019 10:04:01 -0800 (PST)
Date: Tue, 26 Nov 2019 10:03:59 -0800 (PST)
Message-Id: <20191126.100359.1113194587721845602.davem@davemloft.net>
To: john.rutherford@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191126025255.22305-1-john.rutherford@dektech.com.au>
References: <20191126025255.22305-1-john.rutherford@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 26 Nov 2019 10:04:01 -0800 (PST)
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
X-Headers-End: 1iZfC3-00ENC1-Jt
Subject: Re: [tipc-discussion] [net] tipc: fix link name length check
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

From: john.rutherford@dektech.com.au
Date: Tue, 26 Nov 2019 13:52:55 +1100

> From: John Rutherford <john.rutherford@dektech.com.au>
> 
> In commit 4f07b80c9733 ("tipc: check msg->req data len in
> tipc_nl_compat_bearer_disable") the same patch code was copied into
> routines: tipc_nl_compat_bearer_disable(),
> tipc_nl_compat_link_stat_dump() and tipc_nl_compat_link_reset_stats().
> The two link routine occurrences should have been modified to check
> the maximum link name length and not bearer name length.
> 
> Fixes: 4f07b80c9733 ("tipc: check msg->reg data len in tipc_nl_compat_bearer_disable")
> Signed-off-by: John Rutherford <john.rutherford@dektech.com.au>
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
