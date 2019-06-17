Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 198824915A
	for <lists+tipc-discussion@lfdr.de>; Mon, 17 Jun 2019 22:29:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hcyFs-0001oC-HF; Mon, 17 Jun 2019 20:29:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hcyFr-0001o6-M8
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Jun 2019 20:29:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+XuWwO7zaXD71d+cuo4afpf2H/U0SCN8kiiCBiCn6E4=; b=kt5oa9O1xyYPfpyO6d8YRV5OvL
 2LiTiT9GUAFzkgK4o/PxBYFlF5yw98OZEWGk3sR+fSw5FqamcXje4UUmuFstLoWkDVurlmqVLshh5
 F8SrsTKz9aWQ7W2orvsM2ZRUH6TbyXvtde1g3bhIFE+WjT6xRXqE1Uz2euZ88F8Qenqg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+XuWwO7zaXD71d+cuo4afpf2H/U0SCN8kiiCBiCn6E4=; b=lBKYXzQe/WgiG0nPC2+oIRAT6u
 +7rTc48VkjR7umYbb+Km/+mvets2HJI5aoRYn7Pi6KP5ra30wcNZriUopAapb+ujwxut6X3RwL+de
 trzdm3/6lCu8i/4ufEzsvJM156SveUWvpgoCibvDu0EO+qyCjF/8iyehNhcoGLwiS10k=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hcyFp-001gWS-Vu
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Jun 2019 20:29:27 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 6C9701511042F;
 Mon, 17 Jun 2019 13:29:15 -0700 (PDT)
Date: Mon, 17 Jun 2019 13:29:14 -0700 (PDT)
Message-Id: <20190617.132914.2072904368765535293.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190617051542.4133-1-tuong.t.lien@dektech.com.au>
References: <20190617051542.4133-1-tuong.t.lien@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 17 Jun 2019 13:29:15 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hcyFp-001gWS-Vu
Subject: Re: [tipc-discussion] [net-next] tipc: include retrans failure
 detection for unicast
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
Date: Mon, 17 Jun 2019 12:15:42 +0700

> In patch series, commit 9195948fbf34 ("tipc: improve TIPC throughput by
> Gap ACK blocks"), as for simplicity, the repeated retransmit failures'
> detection in the function - "tipc_link_retrans()" was kept there for
> broadcast retransmissions only.
> 
> This commit now reapplies this feature for link unicast retransmissions
> that has been done via the function - "tipc_link_advance_transmq()".
> 
> Also, the "tipc_link_retrans()" is renamed to "tipc_link_bc_retrans()"
> as it is used only for broadcast.
> 
> Acked-by: Jon Maloy <jon.maloy@ericsson.se>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

Applied, thank you.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
