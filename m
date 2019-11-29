Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 300C910D1B7
	for <lists+tipc-discussion@lfdr.de>; Fri, 29 Nov 2019 08:09:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iaaPU-0004Fv-Ea; Fri, 29 Nov 2019 07:09:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1iaaPT-0004FU-1R
 for tipc-discussion@lists.sourceforge.net; Fri, 29 Nov 2019 07:09:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aMNKbN3ZWbmMC/0ehHs2hI19Yngj6WJRYZzlW75s3gQ=; b=c+oPrkiXO/WoAKDhYRqdKoBfxc
 HCe3yIHFEkvl9reHg2MCtBLBAUc/czrFlU2a+5m6M3kB0+tQqPCWgXgf7K9OtawUpSuBP5AcLly8B
 Hm3rws7Q8QCVhHsIofb7iyUJRU/Q6cANKMATqMPofohWLT9yFEPVWpAYCZFiM23yxXUI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aMNKbN3ZWbmMC/0ehHs2hI19Yngj6WJRYZzlW75s3gQ=; b=VdDinr5YdPXvvdNCOIAl8BIM5N
 7et+18PyOhmY+WAI/onAvFQXrYTNgvk51tFUIY72LUwISvYqpsWL5pgkr6i6oHUsId6cukcqjD9zG
 OGd1P+izPFAJUTYqhMLDyobEMPBw8qX8ZKOXJH5inKnL8bRPGNXeKy329adhp1HZkmdw=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iaaPQ-00Gzri-VH
 for tipc-discussion@lists.sourceforge.net; Fri, 29 Nov 2019 07:09:46 +0000
Received: from localhost (c-73-35-209-67.hsd1.wa.comcast.net [73.35.209.67])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 7B14E146CFEDC;
 Thu, 28 Nov 2019 23:09:34 -0800 (PST)
Date: Thu, 28 Nov 2019 23:09:33 -0800 (PST)
Message-Id: <20191128.230933.1076539903838048166.davem@davemloft.net>
To: tung.q.nguyen@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191128031008.2045-1-tung.q.nguyen@dektech.com.au>
References: <20191128031008.2045-1-tung.q.nguyen@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 28 Nov 2019 23:09:34 -0800 (PST)
X-Spam-Score: -0.4 (/)
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
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iaaPQ-00Gzri-VH
Subject: Re: [tipc-discussion] [net v1 0/4] Fix some bugs at socket layer
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

From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
Date: Thu, 28 Nov 2019 10:10:04 +0700

> This series fixes some bugs at socket layer.

Series applied, thanks.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
