Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5175FFBDC6
	for <lists+tipc-discussion@lfdr.de>; Thu, 14 Nov 2019 03:03:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iV4Tj-00014n-3T; Thu, 14 Nov 2019 02:03:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iV4Th-00014a-UZ
 for tipc-discussion@lists.sourceforge.net; Thu, 14 Nov 2019 02:03:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cbHvGAB5Oz8NxIsaEcUDLyVYOR2lFyrWamQB494E8VQ=; b=Apm5CWt1heFjcXqQPkkvm3OvW2
 26zLKCUYpF2eNl8B7JiPMGduz9xBjzl2AqAMQpsfetaIU6QYpKAOtoybuh94Dbtu/GJU2fBTF0f7m
 amM4lTv1kE8Yzm3KVSDGGkrb837Az5lrN1aqOEveS//+8BiuB358NI5xk5rJAIkcGSsU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cbHvGAB5Oz8NxIsaEcUDLyVYOR2lFyrWamQB494E8VQ=; b=ldUJId1k9ba5KIbvmwNnUMGH95
 Qv98MF0OH21sFFDB4soPgwMm5C6jalzSekfqdX2ZcBJZAwmvXwWNAE2DLpeqRwgvWAu3Qf4UjtvlN
 HDoxGkCdRfTAI++0SDrk8vJ5u+r5Q4cq16vbg7/DhdSpAXUnYWMAn004nLvjPooLnB7U=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iV4Td-00Fp1E-NT
 for tipc-discussion@lists.sourceforge.net; Thu, 14 Nov 2019 02:03:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 9622B4ACE1;
 Thu, 14 Nov 2019 13:03:08 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1573696988; bh=gVbBAAZbzbzkWl
 EO8oW9vKBoJ5xaaQympKIpZHX2SoY=; b=GnWXf2dsdypebC61yoNpxOR76NSp2u
 BWftOHLIS0Xz4sHB9H7acqP116nYT20DXF6ix6X9DpRnM/NBOMdmIaypyw4UERun
 9eIu1hrhTU8DU8O0n2F2rd1/R3UN5Yr1QgAqLou9O5hxzYlTNiztMMV1aYhgQNoS
 zf9aFCK9zwTX4=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id v-wu9B3hSIYl; Thu, 14 Nov 2019 13:03:08 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 6FD114AD02;
 Thu, 14 Nov 2019 13:03:08 +1100 (AEDT)
Received: from VNLAP288VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id DDE374ACE1;
 Thu, 14 Nov 2019 13:03:07 +1100 (AEDT)
From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
To: "'Dan Carpenter'" <dan.carpenter@oracle.com>
References: <20191113183259.r6m2bunvfrf4qfyi@kili.mountain>
In-Reply-To: <20191113183259.r6m2bunvfrf4qfyi@kili.mountain>
Date: Thu, 14 Nov 2019 09:03:02 +0700
Message-ID: <231001d59a8f$a8e8af40$faba0dc0$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHntARFk15iM26NUj+MZCZY+c7vqadltckw
Content-Language: en-us
X-Spam-Score: 2.9 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 3.0 BIGNUM_EMAILS          Lots of email addresses/leads
X-Headers-End: 1iV4Td-00Fp1E-NT
Subject: Re: [tipc-discussion] [bug report] tipc: introduce TIPC encryption
 & authentication
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
Cc: tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Thanks Dan,
This is however expected, the function will be shortly returned at line 1727
i.e. the '-ENOKEY' case, so never be dereferenced inside the
tipc_crypto_rcv_complete()!

BR/Tuong

-----Original Message-----
From: Dan Carpenter <dan.carpenter@oracle.com> 
Sent: Thursday, November 14, 2019 1:33 AM
To: tuong.t.lien@dektech.com.au
Cc: tipc-discussion@lists.sourceforge.net
Subject: [bug report] tipc: introduce TIPC encryption & authentication

Hello Tuong Lien,

This is a semi-automatic email about new static checker warnings.

The patch fc1b6d6de220: "tipc: introduce TIPC encryption & 
authentication" from Nov 8, 2019, leads to the following Smatch 
complaint:

    net/tipc/crypto.c:1734 tipc_crypto_rcv()
     error: we previously assumed 'aead' could be null (see line 1697)

net/tipc/crypto.c
  1696		aead = tipc_crypto_key_pick_tx(tx, rx, *skb);
  1697		if (aead)
  1698			goto decrypt;
  1699		goto exit;
                ^^^^^^^^^^
"aead" is NULL here.

  1700	
  1701	decrypt:
  1702		rcu_read_lock();
  1703		if (!aead)
  1704			aead = tipc_aead_get(rx->aead[tx_key]);
  1705		rc = tipc_aead_decrypt(net, aead, *skb, b);
  1706		rcu_read_unlock();
  1707	
  1708	exit:
  1709		stats = ((rx) ?: tx)->stats;
  1710		switch (rc) {
  1711		case 0:
  1712			this_cpu_inc(stats->stat[STAT_OK]);
  1713			break;
  1714		case -EINPROGRESS:
  1715		case -EBUSY:
  1716			this_cpu_inc(stats->stat[STAT_ASYNC]);
  1717			*skb = NULL;
  1718			return rc;
  1719		default:
  1720			this_cpu_inc(stats->stat[STAT_NOK]);
  1721			if (rc == -ENOKEY) {
  1722				kfree_skb(*skb);
  1723				*skb = NULL;
  1724				if (rx)
  1725					tipc_node_put(rx->node);
  1726				this_cpu_inc(stats->stat[STAT_NOKEYS]);
  1727				return rc;
  1728			} else if (rc == -EBADMSG) {
  1729				this_cpu_inc(stats->stat[STAT_BADMSGS]);
  1730			}
  1731			break;
  1732		}
  1733	
  1734		tipc_crypto_rcv_complete(net, aead, b, skb, rc);
                                              ^^^^
Dereferenced inside function.

  1735		return rc;
  1736	}

regards,
dan carpenter



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
