Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FABD245B4C
	for <lists+tipc-discussion@lfdr.de>; Mon, 17 Aug 2020 06:06:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k7WPC-0004G6-IU; Mon, 17 Aug 2020 04:05:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1k7WP7-0004Fk-I7
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Aug 2020 04:05:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i48F/nM2glfsLfr6yASWDSKfHw34rZEp9h2i9ueAQFo=; b=KzsvuN3peYmVDhgkHxOSsj1tS6
 wBWGshQ2yVr+3xloAAEaG5KKWe0vWHdI4bRsyFsV+X3e1qIZEqTbwb4w+143c6Ke3yZ3VO7RAEUP7
 ffqj59n715qYdj3CsCTi0yUk9Jp5aAZDm6AWTwsgPTChlE/umsy7FCh3FazxLCs7QV1Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i48F/nM2glfsLfr6yASWDSKfHw34rZEp9h2i9ueAQFo=; b=KKgHIOrCNGTeZft9rteOvJfMkk
 d1qAZaqQufpB6eVW7A/C2AG19HEHPW4RUs07cqRTj5P54Uob+dF/fxCvHMP4tp5Dr3CJsMHRvmwkR
 1pYV8CZH/uTDa1c2VmzpvguzqBcRegLqb10ICPteOVkCZvv12Y85/qgoLDGEMeRmJgxU=;
Received: from [23.128.96.9] (helo=shards.monkeyblade.net)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k7WP3-00GlhO-VZ
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Aug 2020 04:05:49 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 81AA0125007F3;
 Sun, 16 Aug 2020 20:48:50 -0700 (PDT)
Date: Sun, 16 Aug 2020 21:05:35 -0700 (PDT)
Message-Id: <20200816.210535.10133417009498191.davem@davemloft.net>
To: lucien.xin@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <d20778039a791b9721bb449d493836edb742d1dc.1597570323.git.lucien.xin@gmail.com>
References: <d20778039a791b9721bb449d493836edb742d1dc.1597570323.git.lucien.xin@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 16 Aug 2020 20:48:50 -0700 (PDT)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.9 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k7WP3-00GlhO-VZ
Subject: Re: [tipc-discussion] [PATCH net] tipc: not enable tipc when ipv6
 works as a module
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
Cc: netdev@vger.kernel.org, rdunlap@infradead.org,
 tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Xin Long <lucien.xin@gmail.com>
Date: Sun, 16 Aug 2020 17:32:03 +0800

> When using ipv6_dev_find() in one module, it requires ipv6 not to
> work as a module. Otherwise, this error occurs in build:
> 
>   undefined reference to `ipv6_dev_find'.
> 
> So fix it by adding "depends on IPV6 || IPV6=n" to tipc/Kconfig,
> as it does in sctp/Kconfig.
> 
> Fixes: 5a6f6f579178 ("tipc: set ub->ifindex for local ipv6 address")
> Reported-by: kernel test robot <lkp@intel.com>
> Acked-by: Randy Dunlap <rdunlap@infradead.org>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
