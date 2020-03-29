# frozen_string_literal: true

class QuestionPage < SitePrism::Page
  element :open_question, 'a[href="perguntas/artigo/360019117253-quero-cancelar-minha-conta-como-fao"]'
  element :pj_link, '#header > div > div > section > nav > ul > li:nth-child(2) > a'
  element :open_account, 'a[class="button button--small bg-amarelo"]'
  element :list, 'button[class="button hollow"]'
  element :partner_docs, '#signup-documents-panel-content-2-label'

  def valid_page
    page.has_title?('Conta Digital Grátis e Cartão de Crédito Sem Anuidade')
    page.has_text?('#focanodinheiro')
  end

  def access_questions
    find('a[href="/perguntas"]').click
  end

  def open_section_cancellation
    option = all('a[class="questions__section-link"]')
    option[36].click
    open_question.click
    page.assert_text('Quero cancelar minha conta. Como faço?')
  end

  def validate_cancell_account_infos
    page.has_title?('Quero cancelar minha conta. Como faço?')
    page.assert_text('Meu Neon > Configurações > Cancelar conta.')
    page.assert_text('Ah, você pode cancelar se tiver com o saldo da conta e investimentos zerados, nenhuma contestação em andamento e nenhum limite comprometido no cartão de crédito.')
    page.assert_text('Não se esqueça que por enquanto, as contas canceladas não podem ser reabertas, ok?')
  end

  def access_pj_info
    pj_link.click
  end

  def access_docs_list
    page.has_title?('Conta Digital PJ: grátis pelo app para MEI ou ME')
    new_page = window_opened_by do
      open_account.click
    end
    within_window new_page do
      list.click
      partner_docs.click
      page.has_text?('São válidos os documentos RG, CNH ou RNE (no caso de estrangeiros).')
    end
  end
 end
