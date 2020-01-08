Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E3490134DC2
	for <lists+tipc-discussion@lfdr.de>; Wed,  8 Jan 2020 21:39:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ipI75-0008LT-IJ; Wed, 08 Jan 2020 20:39:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1ipI6u-0008Ks-Qv
 for tipc-discussion@lists.sourceforge.net; Wed, 08 Jan 2020 20:39:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7LQuCVf/Y+/rZroDq9QplEz0Cne7WQ/YO0y+SUPMYa0=; b=Q4zqUlkqWAEJR+l58MeR2yAWEH
 GJt38j5uPzoKpXprKWv/yiVOtkzl1JW4waZ6OkVBadvU6tuKotze2iwIKs6vOLwMCdux3cKCoqKX4
 uKQVZvRFVt6TNS+2qdbmCFokXCy/MPa30XKm1LSUy20FP5+5uhsckBq6te5tkvIy40jI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7LQuCVf/Y+/rZroDq9QplEz0Cne7WQ/YO0y+SUPMYa0=; b=Ut64z/+UWUW2DMO5DaeFFxFEaL
 unE+WlWB3qKwMaWS72LRlUf9qPXOIjEDhRyPHfoL5eJeXLkstyvPWCKB3EDi9Q0G749HXQovwhjt/
 RfSHtel3mOA8cEqYg9d8DDirU7TWn+VleW9MjQT2MmqyMpI0bOZgWzS9sdUeKCO9YHjw=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ipI6t-00DmLJ-45
 for tipc-discussion@lists.sourceforge.net; Wed, 08 Jan 2020 20:39:24 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 7CDB11584A7DF;
 Wed,  8 Jan 2020 12:39:13 -0800 (PST)
Date: Wed, 08 Jan 2020 12:39:13 -0800 (PST)
Message-Id: <20200108.123913.1956180963816835480.davem@davemloft.net>
To: masahiroy@kernel.org
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200106073527.18697-2-masahiroy@kernel.org>
References: <20200106073527.18697-1-masahiroy@kernel.org>
 <20200106073527.18697-2-masahiroy@kernel.org>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 08 Jan 2020 12:39:13 -0800 (PST)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ipI6t-00DmLJ-45
Subject: Re: [tipc-discussion] [PATCH 2/2] tipc: remove meaningless
 assignment in Makefile
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
Cc: tipc-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon,  6 Jan 2020 16:35:27 +0900

> There is no module named tipc_diag.
> 
> The assignment to tipc_diag-y has no effect.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
