Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9188FD2AB
	for <lists+tipc-discussion@lfdr.de>; Fri, 15 Nov 2019 03:03:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iVQxR-0005Fy-QM; Fri, 15 Nov 2019 02:03:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1iVQxP-0005Fq-V8
 for tipc-discussion@lists.sourceforge.net; Fri, 15 Nov 2019 02:03:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gwaY+/JIJuBgXnhcR7h/coX4gUxNUlxqo7AwojdgEZw=; b=BnMPuDs0i3Yn2hsRrIjRvHGe03
 6tO1C3DM4OgYuOqaW6VF15jTy6Pq0E5M7U8+qnZvly7vtm4U6KJ5DRh4SAxzrdcY+Bkq/Z6/lw0Ff
 Ih9VE/n888/sYx/eMYvCOHHeDbh4yMyM4VcCtiAlSpDPJSMcTm4v53Er8Kfc9c8d6rFA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gwaY+/JIJuBgXnhcR7h/coX4gUxNUlxqo7AwojdgEZw=; b=H0YmQHKdBeJKAlnsm+aDiZD6Se
 QuXZdze5XOHq75pQIGR9wvTsDJgkWfBD9Jq+BS/AjorcQ7EiQcbenp/HuDRWmHV1JXgt5burz5vO1
 R52sj/dpiK/03uhe4j2lc9l5xCZvcqsL6rZ7hts5XVpl6BhvgrtF/2E0qFnkxsBjHp90=;
Received: from [23.128.96.9] (helo=shards.monkeyblade.net)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iVQxN-004ETu-PJ
 for tipc-discussion@lists.sourceforge.net; Fri, 15 Nov 2019 02:03:31 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 2031914B79EC2;
 Thu, 14 Nov 2019 18:03:14 -0800 (PST)
Date: Thu, 14 Nov 2019 18:03:13 -0800 (PST)
Message-Id: <20191114.180313.1618194088251283402.davem@davemloft.net>
To: matt.bennett@alliedtelesis.co.nz
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191113232003.29436-1-matt.bennett@alliedtelesis.co.nz>
References: <20191113232003.29436-1-matt.bennett@alliedtelesis.co.nz>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 14 Nov 2019 18:03:14 -0800 (PST)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: alliedtelesis.co.nz]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.8 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iVQxN-004ETu-PJ
Subject: Re: [tipc-discussion] [PATCH] tipc: add back tipc prefix to log
 messages
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

From: Matt Bennett <matt.bennett@alliedtelesis.co.nz>
Date: Thu, 14 Nov 2019 12:20:03 +1300

> The tipc prefix for log messages generated by tipc was
> removed in commit 07f6c4bc048a ("tipc: convert tipc reference
> table to use generic rhashtable").
> 
> This is still a useful prefix so add it back.
> 
> Signed-off-by: Matt Bennett <matt.bennett@alliedtelesis.co.nz>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
